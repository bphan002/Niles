class Api::ProductsController < ApplicationController
    def index
        @products = Product.all
        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
    end


    ##fix this later depending if category is good
    private
    def product_params
        params.require(:product).permit(:title,:bullet)
    end
end
