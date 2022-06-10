class CartsController < ApplicationController
  
    before_action :authenticate_user!
    before_action :set_cart, only: [:show, :edit, :update, :destroy]
    def index
        @carts = Cart.all
    end  

    def show    
    end    

    def create
      @user = current_user
      @cart = @user.create_cart(cart_params)
  
    end
  
    def update
      
    end
  
    
    def destroy
      
    end
  
    private
      def set_cart
        @cart =  Cart.find_by(user_id: current_user.id)
      end
  
      def cart_params
        params.fetch(:cart, {})
      end
  
      def invalid_cart
        logger.error "Attempt to access invalid cart #{params[:user_id]}"
        redirect_to root_path, notice: "That cart doesn't exist"
      end
    end
