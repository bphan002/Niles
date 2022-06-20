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
