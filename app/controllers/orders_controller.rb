class OrdersController < ApplicationController
  
    include CurrentCart
    before_action :authenticate_user!
   

    def create
=begin       # @user = current_user
       # @order = @user.order.create
    #@order.save
        @cart = set_cart
        if @order
            @cart.cart_items.each do |item|
                @order.order_items.create!(
                    product_id = item.product_id,
                    quantity = item.quantity
                )
            end 
            redirect_to root_path   
        end
=end 

        @order = Order.find_by(user_id: current_user.id)
        @cart = Cart.find_by(user_id: current_user.id)
        @order_item = @order.add_item(@order)
    end
   
end    

    

