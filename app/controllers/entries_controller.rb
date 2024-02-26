class EntriesController < ApplicationController

def show
  @place = Place.find_by({"id" => params["id"]})
  @entries = Entry.where({"place_id" => @place["id"]})
end

def new
end

def create

end

end
