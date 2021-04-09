class TasksController < ApplicationController

 
    def index
      tasks = Task.all
      render json: tasks 
    end
  
    def new
      @task = task.new
    end
  
    def create
    end
  
    def show
      @task = Task.find_by_id(params[:id])
    end
  
    
    def update
    end

  end