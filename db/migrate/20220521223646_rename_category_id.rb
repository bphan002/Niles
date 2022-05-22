class RenameCategoryId < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :category_id, :category
  end
end
