class Api::ProductsController < ApplicationController
    def index
        @products = Product.where(params.permit(:category).as_json).includes(:reviews)
        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
        render :show
    end
end
