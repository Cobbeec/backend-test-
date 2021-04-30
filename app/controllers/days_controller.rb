class DaysController < ApplicationController
    def index
        days = Day.all 
        render json: days  
       end 
       
       def show
       day = Day.find(params[:id])
       render json: days 
       end 

       def create 
       day = Day.create(day_params)
        render json: day
       end 

       private 
       def day_params
           params.require(:day).permit(:date) 
         end
     
end 