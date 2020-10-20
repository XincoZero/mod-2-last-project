class RepairsController < ApplicationController

    def new 
        @repair = Repair.new 
    end 

    def create 
        @repair = Repair.create(repair_params)
    end 

    private 

    def repair_params 
        params.require(:repair).permit(:car_model, :repair_type, :avg_cost, :avg_time, :user_id, :dealership_id)
    end 

end
