class BookingsController < ApplicationController
  def create
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new(booking_params)
    # Price
    @booking.price = @venue.price
    # User
    @booking.user = current_user
    # Venue
    @booking.venue = @venue

    if @booking.save
      # redirect_to venue_path(@venue)
    else
      render "venues/show"
    end
  end

  def index
    @user = current_user
    @bookings = Booking.all
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
