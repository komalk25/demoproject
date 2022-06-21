class OrdersController < ApplicationController
    before_action :authenticate_user!

       
    def show
        @order = Order.find(params[:id])
    end    
    
    def create
        
        @user = current_user
        @cart = @user.cart
        if @cart.cart_items.blank?
        else   
            @order = @user.order.create
            @order.save 
        end    
        
        @cart.cart_items.each do |item|
           @order_item = @order.add_product(item)
            if @order_item
                @cart_item = CartItem.find_by(params[:cart_id])
                @cart_item.destroy
            end    
        end    
        
        if @order
           redirect_to order_path(@order)
        else
        end        
                             
    end    
end    