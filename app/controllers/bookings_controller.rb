class BookingsController < ApplicationController
  def create
    @shelter = Shelter.find(params[:shelter_id])
    @booking = Booking.new(bookings_params)
    @booking.shelter = @shelter
    if @booking.save
      redirect_to shelter_bookings(@booking.shelter_id)
    else
      render "shelters/:id", status: :unprocessable_entity
    end
  end

  def index
    # get all bookings instance
    @bookings = Booking.all
  end

  private

  def bookings_params
    params.require(params[:bookings]).permit(:date, :reason, :time_slot, :status, )
  end
end
