module CurrentCart
    private
        
        def set_cart
            @user = current_user
            @cart = @user.cart || @user.create_cart
            @cart.save
            return @cart
        end    
end    