class Api::CartItemsController < ApplicationController
    def index
        if logged_in?
            @cart_items = current_user.cart_items.includes(:product)
            @products = current_user.cart_items
            render :index
        else
            render json:["Click below to sign-in"], status: 422
        end
    end

    def create
        @cart_item = CartItem.find_by(product_id: cart_items_params[:product_id], user_id: current_user.id)
        if @cart_item
            @cart_item.quantity += cart_items_params[:quantity].to_i
            @cart_item.save
        else
            @cart_item = CartItem.create(cart_items_params)
        end
        render :show
    end

    def show
        @cart_item = CartItem.find_by(id: params[:id])
    end

    def update
        @cart_item = CartItem.find_by(product_id: cart_items_params[:product_id], user_id: current_user.id)
        if @cart_item
            @cart_item.quantity = cart_items_params[:quantity].to_i
            @cart_item.save
            render :show
        else
            render json:['Error']
        end
        ## testing dont copy over
        # @user = current_user
        # @cart_items = current_user.carts_items
        # if @cart_items.includes()
        #testing block

        # @cart_item = cart.where(product_id: params[:cart_items][:product_id])

        # @updated_quantity = @cart_item[0].quantity + (params[:cart_item][:quantity].to_i) 

        # if (@updated_quantity <= 0)
        #     destroy(@cart_item[0])
        # else
        #     @cart_item.update(quantity: @updated_quantity)
        #     render :index
        # end

        


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
    end



    def destroy
        @cart_item = CartItem.find_by(id: params[:id])
        if @cart_item.destroy
            render json: {}
        end
    end

    private
    def cart_items_params
        params.require(:cart_item).permit(:user_id, :product_id, :quantity)
    end
end