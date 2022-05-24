class Product < ApplicationRecord
    validates :title, :bullet, :category, :description, :price, :quantity, presence: true

    has_one_attached :picture
    has_many :reviews
    has_many :cartItems
end
