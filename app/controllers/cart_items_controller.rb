class CartItemsController < ApplicationController
    include CurrentCart
    before_action :set_cart_item, only: [:show, :destroy]
    def new
      @cart_item = CartItem.new
    end  
    
    def create
      @product = Product.find(params[:product_id])
      @cart_item = @cart.add_product(@product)

      if @cart_item.save
        redirect_to @cart_item.cart
      else 
        render :new
      end   
    end

    def destroy
      @cart_item.destroy
    end  
    
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    def cart_item_params
      params.require(:cart_item).permit(:product_id)
    end
end
