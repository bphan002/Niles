@products.each do |product|
    json.set! product.id do         
        json.extract! product, :id, :title, :bullet, :description, :category_id, :price, :quantity
        # json.photoUrl url_for(product.picture)
    end
end