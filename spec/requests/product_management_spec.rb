require 'rails_helper'

RSpec.describe "product management", :type => :request do 
    before(:all) do
        @seller = FactoryBot.create(:seller)
        sign_in @seller

    end

    it " Products index page" do
        get "/products"
        expect(response).to render_template(:index)
    end   
    
    it "product management" do
        
        get "/products/new"
        expect(response).to  render_template(:new)
    end    
end    