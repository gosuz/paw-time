class BookingsController < ApplicationController
  def create
    @shelter = Shelter.find(params[:shelter_id])
    @booking = Booking.new(bookings_params)
    @booking.shelter = @shelter
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@shelter)
    else
      render "shelters/show", status: :unprocessable_entity
    end
  end

  def index
    # get all bookings instance
    @bookings = Booking.all
  end

  private

  def bookings_params
    params.require(:booking).permit(:date, :reason, :time_slot, :status)
  end
end
