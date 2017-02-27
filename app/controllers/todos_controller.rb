# all todos
class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.create(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :email)
  end
end
