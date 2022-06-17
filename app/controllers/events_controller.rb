class EventsController < ApplicationController

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def delete 
  end
end

private
  def event_params
    params.require(:event).permit(:user_id, :context)
  end

end