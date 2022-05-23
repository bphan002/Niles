class Api::ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        @product = @review.product
        if @review.save
            render :show
        else
            render json: @review.errors.full_messages, status: 422
        end
    end

    def show 
        @review = Review.find_by(id: params[:id])
        render :show
    end

    def update
        @review = Review.find_by(id: params[:id])
        @product = @review.product
        if @review.update(review_params)
            render :show
        else
            render json: @review.erors.full_messages, status: 422
        end
    end

    def destroy
        @review = Review.find_by(id: params[:id])
        @product = @review.product
        if @review.destroy
            render "api/products/show"
        else
            render json @review.errors.full_messages
        end
    end

    private
    def review_params
        params.require(:review).permit(:header, :product_id, :rating, :comment)
    end
end
