class UsersController < ApplicationController
  def index
    # Мы создаем массив из двух болванок пользователей
    # Для создания фейковой модели мы просто вызываем метод User.new
    # который создает модель, не записывая её в базу
    @users = [
        User.new(
            id: 1,
            name: 'Vadim',
            username: 'installero',
            avatar_url: 'https://secure.gravatar.com/avatar/71269686e0f757ddb4f73614f43ae445?s=100'
        ),
        User.new(
            id: 2,
            name: 'Misha',
            username: 'aristofun'
        )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
        name: 'Vadim',
        username: '@installero',
        avatar_url: 'http://goodgame.ru/files/avatars/av_207911_y3bp.jpg'
    )

    @questions = [
        Question.new(text: "Testext", created_at: Date.parse('14.10.2016')),
        Question.new(text: "Testextteststeststets", created_at: Date.parse('14.10.2016'))
    ]

    @new_question = Question.new
  end
end
