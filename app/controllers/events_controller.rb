class EventsController < AuthenticatedController
  respond_to :json

  def index
    #Show all Events
    @events = Event.all(limit: 5).order_by([:created_at, :desc])
    respond_with(@events)
  end
  
  def show
    #Show all Events
    @event = Event.find(params[:id])
    respond_with(@event)
  end
  
  def create
    @event = Event.new(params[:event])
    @event.save
    respond_with(@event)
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
    respond_with(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_with(@event)
  end
  
  def find_nearby_events()
    # params[:location] is selected location of users choice
    # params[:radius] is radius to search by selected location
    render :text => "Nearby Events!"
    
  end
  
  def verified_request?
    if request.content_type == "application/json"
      true
    else
      super()
    end
   end

end
