require 'rails_helper'

RSpec.describe "order management", :type => :request do
   before(:each) do
    @order = FactoryBot.create(:order)
    @cart = FactoryBot.create(:cart)
    @user = FactoryBot.create(:user)
    sign_in @user
   end 
   
   
    it "." do
        get user_path(@user,@cart)
        expect(response).to render_template("users/show")
    end    
end      