from flask import Flask, render_template, request, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

# Создание экземпляра Flask-приложения.
app = Flask(__name__)

# Настройка подключения к базе данных SQLite.
# Файл site.db будет использоваться для хранения задач.
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'

# Инициализация SQLAlchemy для работы с базой данных.
db = SQLAlchemy(app)


class Todo(db.Model):
    """
    Модель задачи (Todo).

    Представляет одну задачу в базе данных.
    Каждая запись содержит уникальный идентификатор,
    текст задачи и дату её создания.
    """

    # Уникальный идентификатор задачи.
    id = db.Column(db.Integer, primary_key=True)

    # Текст задачи. Поле обязательное, максимальная длина — 200 символов.
    content = db.Column(db.String(200), nullable=False)

    # Дата и время создания задачи.
    # Значение устанавливается автоматически при добавлении записи.
    date_created = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self):
        """
        Возвращает строковое представление объекта задачи.

        Используется для удобного отображения задачи
        при отладке и работе с объектами модели.
        """
        return '<Task %r>' % self.id


@app.route('/', methods=['POST', 'GET'])
def index():
    """
    Главная страница приложения.

    Методы:
        GET:
            Получает все задачи из базы данных и отображает их
            на странице index.html.

        POST:
            Получает текст новой задачи из формы,
            сохраняет её в базе данных и перенаправляет
            пользователя на главную страницу.
    """

    if request.method == 'POST':
        # Получение текста задачи из отправленной формы.
        task_content = request.form['content']

        # Создание нового объекта задачи.
        new_task = Todo(content=task_content)

        try:
            # Добавление задачи в сессию базы данных.
            db.session.add(new_task)

            # Сохранение изменений в базе данных.
            db.session.commit()

            # Возврат на главную страницу после успешного добавления.
            return redirect('/')

        except:
            # Сообщение об ошибке при добавлении задачи.
            return 'There was an issue adding your task'

    else:
        # Получение всех задач, отсортированных по дате создания.
        tasks = Todo.query.order_by(Todo.date_created).all()

        # Передача задач в HTML-шаблон index.html.
        return render_template('index.html', tasks=tasks)


@app.route('/delete/<int:id>')
def delete(id):
    """
    Удаляет задачу по её идентификатору.

    Параметры:
        id: Уникальный идентификатор задачи,
            переданный в URL.

    Возвращает:
        Перенаправление на главную страницу после удаления
        или сообщение об ошибке.
    """

    # Поиск задачи по ID.
    # Если задача не найдена, Flask автоматически возвращает ошибку 404.
    task_to_delete = Todo.query.get_or_404(id)

    try:
        # Удаление задачи из сессии базы данных.
        db.session.delete(task_to_delete)

        # Сохранение изменений.
        db.session.commit()

        # Возврат на главную страницу.
        return redirect('/')

    except:
        # Сообщение об ошибке при удалении задачи.
        return 'There was a problem deleting that task'


@app.route('/update/<int:id>', methods=['GET', 'POST'])
def update(id):
    """
    Обновляет текст существующей задачи.

    Методы:
        GET:
            Отображает форму редактирования задачи
            в шаблоне update.html.

        POST:
            Получает новый текст задачи из формы,
            сохраняет изменения в базе данных
            и перенаправляет пользователя на главную страницу.

    Параметры:
        id: Уникальный идентификатор редактируемой задачи.

    Возвращает:
        Страница редактирования, перенаправление
        или сообщение об ошибке.
    """

    # Поиск задачи по ID.
    task = Todo.query.get_or_404(id)

    if request.method == 'POST':
        # Обновление текста задачи данными из формы.
        task.content = request.form['content']

        try:
            # Сохранение изменений в базе данных.
            db.session.commit()

            # Возврат на главную страницу после обновления.
            return redirect('/')

        except:
            # Сообщение об ошибке при обновлении задачи.
            return 'There was an issue updating your task'

    else:
        # Отображение формы редактирования задачи.
        return render_template('update.html', task=task)


if __name__ == '__main__':
    """
    Точка входа в приложение.

    При непосредственном запуске файла:
    1. Создаётся таблица задач, если она ещё не существует.
    2. Запускается локальный сервер Flask в режиме отладки.
    """

    # Создание таблиц базы данных в контексте приложения.
    with app.app_context():
        db.create_all()

    # Запуск локального сервера.
    # debug=True автоматически перезапускает сервер
    # при изменении кода и показывает подробности ошибок.
    app.run(debug=True)