class TasksController < ApplicationController
 
 
    def index
      tasks = Task.all
      render json: tasks 
    end
  
    def new
      @task = Task.new
    end
  
    def create
    # byebug 
    task = Task.create(task_params)
    task.day_id = 1 
    render json: task
    end
  
  #   def create
  #     name = Task.name 
  #     description = Faker::Task.description
  #     day_id = Task.day_id 
  #     @task = Task.create
  #     render json: @task  
  # end


    def show
      task = Task.find_by_id(params[:id])
      render json: task
    end
  
    
    def update
    end

    def destroy
      task = Task.find(params[:id])
      task.destroy
      render json: { message: "Deleted successfully" }
    end

    def update
      task= Task.find(params[:id])
      task.update(task_params)
      render json: task 
  end

    private 
    def task_params
        params.require(:task).permit(:name, :description, :day_id, :dayList, day_attributes: [:name])  
      end
  end

