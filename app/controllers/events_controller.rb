class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create]
  
  def index
    @events = Event.all
  end

  def new 
  end

  def create
    @new_event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title],description: params[:description], price: params[:price], location: params[:location], user_id: current_user.id)
    if @new_event.save
      redirect_to '/', notice: "Event bien enregistré !"
    else
      redirect_to '/', notice: "Aie ton event n'est pas valide"
    end
  end

  def show
    @event = Event.find_by(id:params[:id])
  end
end
