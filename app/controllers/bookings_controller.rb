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
      redirect_to venues_path
    else
      render "venues/show"
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
