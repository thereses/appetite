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

  def edit
    @cafe = Cafe.find(params[:id])
  end
  def update
    @cafe = Cafe.find(params[:id])
    if @cafe.update(cafe_params)
      flash[:success] = "Thanks for updating the cafe"
      redirect_to root_path
    else
      flash[:error] = "Oops, error"
      render :new
    end
  end
  def destroy
    @cafe = Cafe.find(params[:id])
    @cafe.destroy
    redirect_to root_path
  end
private
  def cafe_params
    params.require(:cafe).permit(:name,:address,:rating)
  end
end
