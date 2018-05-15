class RestaurantsController < ApplicationController
  # find restaurant and set @restaurant variable before show, edit, update, destroy
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  def new
    # initialize a new instance to pass it to the new form
    @restaurant = Restaurant.new
  end

  def create
    # not using a variable in a view so no need to use @ symbol
    # using the (filtered) strong params to create the new restaurant
    restaurant = Restaurant.create(restaurant_params)
    # redirecting to the show view of the restaurant
    redirect_to restaurant_path(restaurant)
  end

  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # find the restaurant
    # @restaurant = Restaurant.find(params[:id]) => set_restaurant before_action
    # update the restaurant's attributes
    @restaurant.update(restaurant_params)
    # redirect to the restaurant show view
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # set_restaurant => @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # redirecting to the index
    redirect_to restaurants_path
  end


  private

  def restaurant_params
    # we require the key :restaurant in the params hash
    # and only allow the keys/value :name, :address, :rating to pass through
    return params.require(:restaurant).permit(:name, :address, :rating)
    # params = {
    #   restaurant: {
    #     name: 'Pizza East',
    #     address: 'Shoreditch'
    #     rating: 5
    #   }
    # }
  end


  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
