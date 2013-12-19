class TasksController < ApplicationController
  def new
    @task = Task.new
    render :show_form
  end 
  
  def create
    @task = Task.create(task_params)
    if @task.save
      @tasks = Task.all
     render :hide_form
    else
      render :show_form
    end 
 end

  def edit
    @task = Task.find(params[:id])
    render :show_form
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)
    if @task.save
      @tasks = Task.all?
      render :hide_form
    else
      render :show_form  
   end
 end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @task = Tasks.all
  end 
  
  private
  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end
end
