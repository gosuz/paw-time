class BookingsController < ApplicationController
  def index
    # get all bookings instance
    @bookings = Booking.all
  end

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

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:date, :reason, :time_slot, :status, :start_time, :end_time)
  end
end
