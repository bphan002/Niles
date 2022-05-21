class AddReviewTitle < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :header, :string, null: false
  end
end