class Api::CartItemsController < ApplicationController
    def index
        if logged_in?
            @cart = current_user.cart_items.includes(:product)
            @products = current_user.cart_items
            render :index
        end
    end


    def create
        # @cart_item = CartItem.find_by(product_id: params[:product_id])
        # if @cart_item.nil?
        #     render :show
        # else
        @cart_item = CartItem.create(cart_items_params)
        if @cart_item.save
            render :show
        end
    end

    def show
        @cart_item = CartItem.find_by(id: params[:id])
    end

    def update
        @user = current_user
        @cart_items = current_user.carts_items
        @cart_item = cart.where(product_id: params[:cart_items][:product_id])

        @updated_quantity = @cart_item[0].quantity + (params[:cart_item][:quantity].to_i) 

        if (@updated_quantity <= 0)
            destroy(@cart_item[0])
        else
            @cart_item.update(quantity: @updated_quantity)
            render :index
        end
    end

    def destroy()
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
