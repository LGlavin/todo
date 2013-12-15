class TasksController < ApplicationController
  def new
    @task = Task.new
  end 
  
  def create
    @task = Task.create(task_params)
    redirect_to root_path
 end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.edit
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end
end
