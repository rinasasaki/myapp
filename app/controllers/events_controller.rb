class EventsController < ApplicationController

  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end


  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def show
  end


private
  def event_params
    params.require(:event).permit(:user_id, :event_name)
  end

end