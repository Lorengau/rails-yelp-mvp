class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.update(params[restaurant_params])
    redirect_to restaurant_path(@restaurant.id)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
