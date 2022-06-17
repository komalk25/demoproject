class OrdersController < ApplicationController
    
    before_action :authenticate_user!

    def show
        @user = current_user
        @cart = @user.cart
        @cart_item = @cart.cart_items.find(params[:id])

    end

    def create
        @order = set_order
        @order_item = @order.order_items.create(order_item_params)
    end 
    
    private 
        def order_item_params
            require(:order_items).permit(:product_id,:quantity)
        end    
end
