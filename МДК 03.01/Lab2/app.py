import os
from flask import Flask, render_template, request, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)

# Максимальная длина текста задачи. Должна совпадать с ограничением модели
# (db.String(200)), которое сам SQLite не проверяет — поэтому проверяем сами.
MAX_CONTENT_LENGTH = 200


class Todo(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.String(200), nullable=False)
    date_created = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        return '<Task %r>' % self.id


def validate_task_content(raw_value):
    """
    Серверная проверка текста задачи. Выполняется независимо от того,
    что было (или не было) проверено в браузере — форму можно отправить
    и напрямую, в обход HTML/JS.

    Возвращает (очищенный_текст, список_ошибок).
    """
    errors = []
    content = (raw_value or "").strip()

    if not content:
        errors.append("Текст задачи не может быть пустым или состоять только из пробелов.")
    elif len(content) > MAX_CONTENT_LENGTH:
        errors.append(
            f"Текст задачи не должен превышать {MAX_CONTENT_LENGTH} символов "
            f"(введено {len(content)})."
        )

    return content, errors


@app.route('/', methods=['POST', 'GET'])
def index():
    if request.method == 'POST':
        # .get(...) вместо ['content'] — не роняем приложение 500-й ошибкой,
        # если поле вообще отсутствует в запросе.
        raw_content = request.form.get('content', '')
        content, errors = validate_task_content(raw_content)

        if errors:
            tasks = Todo.query.order_by(Todo.date_created).all()
            return render_template('index.html', tasks=tasks, errors=errors), 400

        new_task = Todo(content=content)
        try:
            db.session.add(new_task)
            db.session.commit()
            return redirect('/')
        except Exception:
            db.session.rollback()
            return 'There was an issue adding your task', 500

    else:
        tasks = Todo.query.order_by(Todo.date_created).all()
        return render_template('index.html', tasks=tasks, errors=None)


@app.route('/delete/<int:id>', methods=['POST'])
def delete(id):
    """
    Изменено с GET на POST: удаление — операция, изменяющая состояние,
    и не должна выполняться простым переходом по ссылке (иначе задачу
    можно удалить через <img src="/delete/1"> на постороннем сайте — CSRF).
    Дополнительно рекомендуется включить flask-wtf CSRF-токен.
    """
    task_to_delete = Todo.query.get_or_404(id)
    try:
        db.session.delete(task_to_delete)
        db.session.commit()
        return redirect('/')
    except Exception:
        db.session.rollback()
        return 'There was a problem deleting that task', 500


@app.route('/update/<int:id>', methods=['GET', 'POST'])
def update(id):
    task = Todo.query.get_or_404(id)

    if request.method == 'POST':
        raw_content = request.form.get('content', '')
        content, errors = validate_task_content(raw_content)

        if errors:
            return render_template('update.html', task=task, errors=errors), 400

        task.content = content
        try:
            db.session.commit()
            return redirect('/')
        except Exception:
            db.session.rollback()
            return 'There was an issue updating your task', 500

    else:
        return render_template('update.html', task=task, errors=None)


if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    # debug=True в продакшене открывает интерактивный отладчик Werkzeug,
    # который может дать удалённое выполнение кода. Включаем только
    # явно через переменную окружения при локальной разработке.
    app.run(debug=os.environ.get('FLASK_DEBUG') == '1')