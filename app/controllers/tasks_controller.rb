class TasksController < ApplicationController
 
 
    def index
      tasks = Task.all
      render json: tasks 
    end
  
    def new
      @task = Task.new
    end
  
    def create
      # @tasks = Tasks.new(task_params)
      task = Task.new(name: params[:name], description: params[:description], day_id: params[:day_id])
    end
  
    def show
      @task = Task.find_by_id(params[:id])
    end
  
    
    def update
    end


    private 
    def task_params
        params.require(:task).permit(:name, :description, :day_id) 
      end
  end