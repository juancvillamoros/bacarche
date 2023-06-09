class EventsController < ApplicationController
    def index
      @events = Event.all
    end
  
    def new
      @event = Event.new
    end
  
    def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to events_path, notice: "Event successfully created."
      else
        render :new
      end
    end
  
    def edit
      @event = Event.find(params[:id])
    end
  
    def update
      @event = Event.find(params[:id])
      if @event.update(event_params)
        redirect_to events_path, notice: "Event successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to events_path, notice: "Event successfully deleted."
    end
  
    private
  
    def event_params
      params.require(:event).permit(:name, :date, :description)
    end
end
  