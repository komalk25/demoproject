class CartsController < ApplicationController
    include CurrentCart
    before_action :authenticate_user!
   
    def show
      @cart = set_cart
    end    
    
    def create
      @cart = Cart.find_by(user_id: current_user.id)
      @product = Product.find(params[:product_id])
      @cart_item = @cart.add_product(@product)

      if @cart_item.save
        redirect_to @cart_item.cart
      else 
        render :new
      end   
    end

    def edit
    end

    def update
    end
  
    def destroy
    end
  
    private  
      def cart_params
        params.require(:cart).permit(:user_id)
      end   
    end
