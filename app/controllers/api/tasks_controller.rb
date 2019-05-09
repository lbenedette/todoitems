class Api::TasksController < ApplicationController
  before_action :authenticate
  before_action :set_task, only: [:show, :update, :destroy, :completed]

  def index
    @tasks = Task.where(:facebook_token => @facebook_token)

    render json: @tasks
  end

  def show
    render json: @task
  end

  def create
    @task = Task.new(task_params)
    @task.facebook_token = @facebook_token

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    @task.text = task_params[:text]

    if @task.save
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def completed
    @task.completed = task_params[:completed]

    if @task.save
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
  end

  private

  def set_task
    @task = Task.where(:facebook_token => @facebook_token).find(params[:taskId])
  end

  def task_params
    params.require(:task).permit(:text, :completed)
  end
end
