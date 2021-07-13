class ReviewsController < ApplicationController
    before_action :set_restaurant, only: [:new, :create]

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.restaurant = @restaurant
        @review.save
        redirect_to @restaurant
    end

    private
    def review_params
        params.require(:review).permit(:rating, :content)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
