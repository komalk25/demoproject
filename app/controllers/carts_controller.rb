class CartsController < ApplicationController
    before_action :authenticate_user!
    def index
        
    end  
    def show
    
    end
    def create
        @user = User.current_user.find(params[:user_id])
        @cart = @user.create_cart
    end    
end
