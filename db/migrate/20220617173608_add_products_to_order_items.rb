class AddProductsToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :product, null: false, foreign_key: true
  end
end
