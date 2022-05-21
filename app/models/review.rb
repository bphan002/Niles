class Review < ApplicationRecord
    validates :user_id, :product_id, :rating, :comment, :header, presence: true

    belongs_to :user
    belongs_to :product
end
