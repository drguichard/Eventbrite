class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end
  
  def create 
		@event=Event.new(title: params[:title],price:params[:price],description:params[:description],admin_id:current_user.id,location: params[:location],start_date:params[:start_date],duration:params[:duration])
    if @event.save
			redirect_to event_path(@event.id)
		else
			redirect_to new_event_path
		end

  end
  


end
