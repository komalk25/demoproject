class CartItemsController < ApplicationController
    include CurrentCart
    before_action :set_cart_item, only: [:show, :destroy]
   

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
