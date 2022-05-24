class AddIndexToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_index :cart_items, :product_id
    add_index :cart_items, :user_id
  end
end
