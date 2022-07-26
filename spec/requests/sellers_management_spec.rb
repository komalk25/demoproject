require "rails_helper"

RSpec.describe "seller management", :type => :request do
    
    it "index page test" do
        get "/seller"
        expect(response).to render_template(:index)
    end    

end