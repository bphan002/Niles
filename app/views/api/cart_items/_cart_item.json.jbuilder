json.extract! cart_item, :id, :user_id, :product_id, :quantity
json.image url_for(cart_item.product.picture)
json.title cart_item.product.title 
json.price cart_item.product.price
json.quantity cart_item.quantity



        # cart = current_user.cart_items
        # @user = current_user
        # @cart_items = cart.where(product_id: params[:cart_items][:product_id])
        
        # if params[:cart_items][:quantity].to_i == 0
        #     destroy(@cart_items[0])
        # else
        #     new_quantity = @cart_items[0].quantity + (params[:cart_items][:quantity].to_i)
        #     if (new_quantity <=0)
        #         destroy(@cart_items[0])
        #     elsif
        #         @cart_items.update(quantity: new_quantity)
        #     end
        # end


        # @cart_item = CartItem.find_by(product_id: params[:product_id])
        # if @cart_item.nil?
        #     render :show
        # else
        ##i think its giogn to be something like
        # @cart_item = current_user.cart_items assosiation.build(cart_items_params)