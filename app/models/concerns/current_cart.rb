module CurrentCart
    private

        def set_cart
            @user = current_user
            @cart = @user.carts.find(params[:id])
            rescue ActiveRecord::RecordNotFound
            @cart = current_user.build_cart
        end    
end    