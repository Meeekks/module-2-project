class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    term = params[:search][:term]
    location = params[:search][:location]

    @yelp_results = search(term, location, 1000, 1000)

    @new_array = []
    @yelp_results['businesses'].each do |yelp_result|
      hash = {}
      hash['name'] = yelp_result['name']
      hash['address'] = yelp_result['location']['display_address'][0]
      hash['rating'] = yelp_result['rating']
      hash['image_url'] = yelp_result['image_url']
      hash['url'] = yelp_result['url']
      hash['categories'] = yelp_result['categories'][0]['title']
      hash['phone'] = yelp_result['display_phone']

      restaurant = Restaurant.find_or_create_by(hash)

      @new_array.push(restaurant)
      end

    @new_array
    
    @comment = Comment.new

    render :results
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = Comment.new
    @favorite = Favorite.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :image_url, :url, :categories, :phone)
  end

end
