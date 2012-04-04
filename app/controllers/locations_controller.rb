class LocationsController < AuthenticatedController
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

  def update

  end

  def destroy

  end
  
end
