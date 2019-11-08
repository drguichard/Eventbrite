class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    Event.new
  end
  
  def create 
		@event=Event.new(title: params[:title], price:params[:price], description:params[:description], administrator_id:current_user.id, location: params[:location], start_date:params[:start_date], duration:params[:duration])
    if @event.save
      flash[:success] = 'Votre event a bien été créé'
      render 'index'
    else
      flash[:alert] = 'Votre event a pas été créé'
      render 'new'
    end
  end
  
  def show 
    @event= Event.find(params[:id])
  end


end
