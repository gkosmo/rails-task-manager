class TasksController < ApplicationController
  before_action  :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def edit
  end

  def destroy
    @task.delete
    redirect_to tasks_path
  end

  def new
    @task = Task.new()
  end

  def create
    res = task_params.clone
    res[:percent] = 5
    @task = Task.new(res)
    @task.save
    redirect_to
  end
  private

  def set_task
    @task = Task.find(params[:id])
  end

  # These are 'strong params', Rails is asking us to 'whitelist'
  # all the params it will accept when assigning params to the
  # fields in a restaurant
  def task_params
    params.require(:task).permit(:title, :percent, :due_date)
  end

end
