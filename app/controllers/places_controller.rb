class PlacesController < ApplicationController

  def index
    render :template => "places/index"
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
  end 

  def new
  
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end
