class Api::ProductsController < ApplicationController
    def index
        @products = Product.where(params.permit(:category).as_json)
        # if @products == nil || @products == undefined
        #     @products=Product.all
        # end
        render :index
    end

    def show
        # debugger
        @product = Product.find_by(id: params[:id])
        render :show
    end
end
