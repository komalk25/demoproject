require 'rails_helper'

RSpec.describe "product management", :type => :request do 
    before(:each) do
        @seller = FactoryBot.create(:seller)
        sign_in @seller 
        
        
    end 
    it "get products index page" do
        get "/products"
        expect(response).to render_template(:index)
    end   
    
    it "does not render a index page" do
        get "/products"
        expect(response).to_not render_template(:show)
    end

    it "product management" do
        
        get seller_path(@seller.id)
        expect(response).to render_template("products/_form")
        
        # post "/products"

        # expect(response).to redirect_to(assigns(:product))
    
    

    end   
end    