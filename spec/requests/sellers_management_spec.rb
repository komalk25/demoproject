require "rails_helper"

RSpec.describe "seller management", :type => :request do
    
    it "index page test" do
        get "/sellers/sign_up"
        expect(response).to have_http_status(200)
        
        get "/sellers/sign_in"
        expect(response).to have_http_status(200)
    
        post "/sellers/sign_in", :params => {:seller => {:email => "renuka@gmail.com"}}

        expect(response).to have_http_status(200)
        
    end     

end