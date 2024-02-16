class PlacesController < ApplicationController

  def index
    render :template => "places/index"
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
  end 
end
