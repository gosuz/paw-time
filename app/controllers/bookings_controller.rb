class BookingsController < ApplicationController
  def index
    # get all bookings instance
    @user = current_user
    @bookings = Booking.all
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @booking = Booking.new(bookings_params)
    @booking.shelter = @shelter
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "shelters/show", status: :unprocessable_entity
    end
  end


  def update
    @user = current_user
    @booking = Booking.find(params[:id])
    if @booking.update(bookings_params)
      redirect_to bookings_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:date, :reason, :time_slot, :status)
  end
end
