json.extract! cart_item, :id, :user_id, :product_id, :quantity
json.image url_for(cart_item.product.picture)
json.title cart_item.product.title 
json.price cart_item.product.price
json.quantity cart_item.quantity
