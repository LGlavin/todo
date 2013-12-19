class TasksController < ApplicationController
  def new
    @task = Task.new
  end 
  
  def create
    @task = Task.create(task_params)
    @tasks = Task.all
 end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
  
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end
end
