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
    @venue.owner = current_user
    if @venue.save
      redirect_to my_own_path
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    redirect_to venues_path(:search => { query: "" })
  end

  def my_own
    @my_venues = Venue.where(user_id: current_user.id)
  end

  private

  def venue_params
    params.require(:venue).permit(:description, :price, :owner_id, :title, :imgurl)
  end
end
