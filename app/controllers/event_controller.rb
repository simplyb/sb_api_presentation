class EventController < ApplicationController
  def index
    #Show all Events
    render :text => "View all Events"
  end
  
  def show
    #show an event
        render :text => "One Event"
  end
  
  def create
    @event = Event.new()
    @event.update_attributes(params)
    respond_to do |format|
        format.html {render :text => "Create a new event"}
      end
  end
  
  def find_nearby_events()
    # params[:location] is selected location of users choice
    # params[:radius] is radius to search by selected location
    render :text => "Nearby Events!"
    
  end
  
end
