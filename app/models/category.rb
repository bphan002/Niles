class Category < ApplicationRecord
    validates :name, presence: true

    has_many :products

    belongs_to :user

    belongs_to :product
end
