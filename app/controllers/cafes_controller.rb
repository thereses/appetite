class CafesController < ApplicationController
  def index
    @cafes = Cafe.all
  end
  def new
    @cafe = Cafe.new
  end
  def create
    @cafe = Cafe.new(cafe_params)
    coordinates = Geocoder.coordinates(cafe_params["address"])
  #@cafe.longitude = coordinates["longitude"]
  #@cafe.latitude = coordinates["latitude"]
    if @cafe.save
      flash[:success] = "Thanks for adding your cafe"
      redirect_to root_path(@cafe)
    else
      flash[:error] = "Oops, error"
      render :new
    end
  end
end
  def edit
    @cafe = Cafe.find(params[:id])
  end
private
  def cafe_params
    params.require(:cafe).permit(:name,:address,:rating)
  end
