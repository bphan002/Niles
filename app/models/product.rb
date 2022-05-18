class Product < ApplicationRecord
    validates :title, :bullet, :category, :description, :price, :quantity, presence: true

    has_one_attached :picture


end
