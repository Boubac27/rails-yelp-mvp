class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to index_path
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to index_path
  end

 private

  def restaurant_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
