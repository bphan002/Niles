json.extract! @product, :id, :title, :bullet, :description, :category, :price, :quantity
json.photoUrl url_for(@product.picture)

json.set! "reviews" do 
    @product.reviews.each do |review|
        json.set! review.id do 
            json.partial! 'api/reviews/review', review: review
        end
    end
end 

