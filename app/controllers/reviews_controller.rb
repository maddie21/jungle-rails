class ReviewsController < ApplicationController
    before_filter :current_user
    def create
        @review = Review.new(review_params)
        @review.product = Product.find params[:product_id]
        @review.user = current_user
        if @review.save!
            redirect_to :back, notice: 'Review saved'
        else
            redirect_to :back, notice: 'Unable to save review, please try again'
        end
    end

    def destroy
        @review = Review.find params[:id]
        @review.destroy
        redirect_to :back, notice: 'Review deleted successfully!'
    end

    def review_params
        review_data = params.require(:review).permit(
            :rating,
            :comment
        )
        review_data
    end
end
