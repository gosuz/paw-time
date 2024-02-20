class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @shelters = Shelter.all
  end
  # delete later

  def show
    @shelter = Shelter.find(params[:id])
  end

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
    params.require(:shelter).permit(:name, :location, :capacity, :logo, :banner, :description)
  end
end
