class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        @review = Review.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            redirect_to restaurant_path(@restaurant)
          else
            render "restaurants/new"
        end
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :category, :phone_number)
    end
end
