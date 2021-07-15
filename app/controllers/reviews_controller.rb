class ReviewsController < ApplicationController
    before_action :set_restaurant, only: [:new, :create]

    def new
        @review = Review.new
    end

    def create
        @restaurant = set_restaurant
        @review = Review.new(review_params)
        @review.restaurant = @restaurant
        if @review.save
            redirect_to @restaurant
         else
            render "reviews/new"
         end
    end

    private

    def review_params
        params.require(:review).permit(:rating, :content)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
