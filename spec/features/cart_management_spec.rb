require 'rails_helper'

RSpec.feature "cart management" do
    
    before(:each) do
        @cart = FactoryBot.create(:cart)
        @user = FactoryBot.create(:user)
        login_as(@user, :scope => :user)
    end

    scenario "carts show page" do
       visit cart_path(@cart)
       expect(page).to have_content("checkout") 
       click_link("checkout")
       expect(current_path).to eq("/users/#{@}")

       
    end    
end    