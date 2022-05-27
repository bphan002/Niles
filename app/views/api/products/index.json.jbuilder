@products.each do |product|
    json.set! product.id do         
        json.extract! product, :id, :title, :bullet, :description, :category, :price, :quantity
        json.photoUrl url_for(product.picture)
        sum = 0
        product.reviews.each do |review|
            sum += review.rating
        end

        if product.reviews.length == 0
            avg = 0
        else
            avg = sum/product.reviews.length
        end

        amount = product.reviews.length
    
        json.stars avg
        json.amt amount
    end
end