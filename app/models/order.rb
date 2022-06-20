class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user
  def add_item(cart)
    current_item = order_items.find_by(order_id: cart.id)

    if current_item
        current_item.increment(:quantity)
        current_item.save
    else
        
        current_item = order_items.build()
    end    
         
    current_item 
  end 
end
