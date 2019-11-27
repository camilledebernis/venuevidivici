class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
    @booking = Booking.new
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    redirect_to @venue.user
  end

  private

  def venue_params
    params.require(:venue).permit(:description, :price, :owner_id)
  end
end
