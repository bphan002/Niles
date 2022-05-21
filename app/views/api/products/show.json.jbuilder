json.extract! @product, :id, :title, :bullet, :description, :category_id, :price, :quantity do
# json.photoUrl url_for(@product.picture)
    # json.partial! '/api/reviews/_review', review: @reviews
# end
json.set! "reviews" do 
    @product.reviews .each do |review|
        json.set! review.id, json.partial! 'api/reviews/review', review: review
    end
end

