class EventsController < AuthenticatedController

  def index
    #Show all Events
    @events = Event.all(limit: 5).order_by([:created_at, :desc])
    render("events/index")
  end
  
  def show
    #Show all Events
    @event = Event.find(params[:id])
    render("events/_event")
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
     render("events/_event")
    else
      render :json => {:success => false, :errors => @event.errors} 
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
     render("events/_event")
    else
      render :json => {:success => false, :errors => @event.errors}
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => @event.errors}
    end
  end
  
  def find_nearby_events()
    # params[:location] is selected location of users choice
    # params[:radius] is radius to search by selected location
    render :text => "Nearby Events!"
    
  end

end
