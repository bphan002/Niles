class Product < ApplicationRecord
    validates :title, :bullet, :category_id, :description, :price, :quantity, presence: true

    has_one_attached :picture
    belongs_to :category
    has_many :reviews
end
