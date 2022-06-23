class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
          end
        

          def after_sign_in_path_for(resource)
               case resource
               when User
                    cart_path(:id => current_user.id)
               when Seller
                    new_product_path(:seller_id => current_seller.id)
               end
             end
   
end
