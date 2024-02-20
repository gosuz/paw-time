class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end
  # delete later

  def new
    @shelter = Shelter.new
  end

  def create
    # Going to post the form to where????
    @shelter = Shelter.new(shelter_params)
    if @shelter.save
      # redirect_to shelter they just created
      redirect_to shelter_path(@shelter)
    else

    end
  end

  private
  def shelter_params
    @shelter.require(:shelter).permit(:name, :location, :capacity, :logo, :banner, :description)
  end
end
