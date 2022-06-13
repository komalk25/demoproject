class CartsController < ApplicationController
    include CurrentCart
    before_action :authenticate_user!
    before_action :set_cart_items, only: [:show, :edit, :update, :destroy]
    
    def index
        @cart_items = CartItem.all
    end  

    def show
      @cart_item = CartItem.find(params[:id])
    end    

    def new
      @cart_item = CartItem.new
    end  
    
    def create
      @cart_item = @cart.add_product(@product)

      if @cart_item.save
        redirect_to @cart_item.cart
      else 
        render :new
      end   
    end
  
    def update
    end
  
    
    def destroy
      @cart_item.destroy
    end
  
    private
     
      def set_cart_items
        @cart_item = @cart.cart_items.find(params[:id])
      end  
      def cart_params
        #params.fetch(:cart, {})
        params.require(:cart).permit(:user_id)
        params.require(:cart_item).permit(:product_id, :cart_id, :quantity)
      end
  
      
    end
