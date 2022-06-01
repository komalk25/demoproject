class CartItemsController < ApplicationController
    include CurrentCart
    
    
    private
    
    # Never trust parameters from the scary internet, only allow the whitelist through.
    def cart_item_params
      params.require(:cart_item).permit(:product_id)
    end
end
