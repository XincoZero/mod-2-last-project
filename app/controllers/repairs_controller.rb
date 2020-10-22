class RepairsController < ApplicationController

    def index 
        @repairs = Repair.all 
    end 

    def new 
        @repair = Repair.new 
        @users = User.all
        @dealerships = Dealership.all 
    end 

    def create 
        @repair = Repair.create(repair_params)
        if @repair.save
            redirect_to dealerships_path(@dealership) 
            #Redirect to dealership show page 
        else 
         flash[:errors] = @repair.errors.full_messages
         redirect_to new_repair_path 
        end 
    end 

    def edit 
        @repairs = Repair.all 
        @repair = Repair.find(params[:id])
    end 

    def update 
        @repair = Repair.find(params[:id])
        @repair.update(repair_params)
        if @repair.save 
            flash[:success] = "Form Successfully Updated!"
            redirect_to repair_path(@repair)
        else
            flash[:errors] = @repair.errors.full_messages
            redirect_to edit_repair_path(@repair)
        end 
    end 

    def show 
        @repair = Repair.find(params[:id])
    end 

    def destroy
        @repair = Repair.find(params[:id])
        @repair.destroy
        redirect_to new_repair_path
    end

    private 

    def repair_params 
        params.require(:repair).permit(:car_model, :repair_type, :avg_cost, :avg_time, :user_id, :dealership_id)
    end 

end


