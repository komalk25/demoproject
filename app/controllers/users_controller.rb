class UsersController < ApplicationController
    def index
        @users = User.all
    end   

    def show
        @user = current_user
    end  
    
    def edit
        @user = User.find_by(id: current_user.id)

    end
    
    def update
        @user = User.find_by(id:current_user.id)

        if @user.update(user_params)
            redirect_to orders_path
        end        
    end    

    private

    def user_params
        params.require(:user).permit(:name,:address,:pincode,:state)
    end    
end
