class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = Comment.new
    @favorite = Favorite.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :rating, :img_url, :longtitude, :latitude)
    end

end
