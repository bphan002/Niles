class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string "title", null: false
      t.text "bullet", array: true, default: []
      t.text "description", null: false, limit:300
      t.float "price", null: false
      t.integer "quantity", null: false
      
      t.timestamps
    end
  end
end
