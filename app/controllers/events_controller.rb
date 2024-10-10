# app/controllers/events_controller.rb
class EventsController < ApplicationController
  before_action :set_plan
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /plans/:plan_id/events
  def index
    @events = @plan.events
  end

  # GET /plans/:plan_id/events/new
  def new
    @event = @plan.events.new
  end

  # POST /plans/:plan_id/events
  def create
    @event = @plan.events.new(event_params)

    if @event.save
      redirect_to plan_events_path(@plan), notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # GET /plans/:plan_id/events/:id
  def show
  end

  # GET /plans/:plan_id/events/:id/edit
  def edit
  end

  # PATCH/PUT /plans/:plan_id/events/:id
  def update
    if @event.update(event_params)
      redirect_to plan_event_path(@plan, @event), notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /plans/:plan_id/events/:id
  def destroy
    @event.destroy
    redirect_to plan_events_path(@plan), notice: 'Event was successfully destroyed.'
  end

  private

  def set_plan
    @plan = Plan.find(params[:plan_id])
  end

  def set_event
    @event = @plan.events.find(params[:id])
  end

  # app/controllers/events_controller.rb
  def event_params
    params.require(:event).permit(:name, :start_time, :end_time, :location, :description, :event_type, :date) # dateを追加
  end

end
