class CartsController < ApplicationController
    before_action :authenticate_user!
    #before_action :set_cart, only: [:show,:create]
    def index
        
    end  

    def show
        @cart = Cart.find(params[:id])

=begin  if @cart.present?
            @cart = Cart.find(current_user.id)
        else 
            render :new
        end
=end        
    end

    def create
        @user = current_user
        @cart = @user.create_cart(cart_params)

        redirect_to cart_items
    end   
    
    private
    
      
    def cart_params
        params.require(:cart).permit(:user_id)
    end 
end
