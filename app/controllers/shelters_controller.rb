class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @shelters = Shelter.all
    @pets = Pet.all
  end

  def show
    @shelter = Shelter.find(params[:id])
    @booking = Booking.new
    @pet = Pet.new
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    if @shelter.save
      # redirect_to shelter they just created
      redirect_to shelter_path(@shelter)
    else
      # loads the page again, with the info thye filled
      render :new, status: :unprocessable_entity
    end
  end

  private
  def shelter_params
    params.require(:shelter).permit(:name, :location, :capacity, :logo, :banner, :description)
  end
end
