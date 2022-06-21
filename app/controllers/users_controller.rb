class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @users = User.all
    end   

    def show
        @user = User.find_by(id: current_user.id)
    end  
    
    def edit
        @user = User.find_by(id: current_user.id)

    end
    
    def update
        @user = User.find_by(id:current_user.id)

        if @user.update(user_params)
            redirect_to user_path 
        end        
    end    

    private

    def user_params
        params.require(:user).permit(:name,:address,:pincode,:state)
    end    
end
