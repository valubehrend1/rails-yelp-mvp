class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new
        @restaurant.save
        redirect_to restaurant_path
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address)
    end
end
