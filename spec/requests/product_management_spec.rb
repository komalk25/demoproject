require 'rails_helper'

RSpec.describe "product management", :type => :request do 
    it " Products index page" do
        get "/products"
        expect(response).to render_template(:index)
    end   
    
    it "product management" do
        let(:seller){ FactoryBot.create(:seller)}
        get "/seller/8"
        expect(response).to  render_template(:new)
    end    
end    