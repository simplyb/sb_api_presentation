class LocationController < ApplicationController
  def index
    #Show all Locations
    render :text => "View all Locations"
  end
  
  def show
    #show an Location
        render :text => "One Location"
  end
  
  def create
        render :text => "Create a new Location"
  end
  
  def find_nearby_locations()
    # params[:location] is selected location of users choice
    # params[:radius] is radius to search by selected location
    render :text => "Nearby Locations!"
    
  end
end
