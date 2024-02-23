class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @shelter = Shelter.find(params[:shelter_id])
    @pet.shelter = @shelter

    if @pet.save
      redirect_to shelter_path(@shelter) # shelter show page
      # it should add a photo of the dog
    else
      # In shelter show page should display the same form file with the info again
      render "shelters/show", status: :unprocessable_entity
    end
  end
end

private
def pet_params
  params.require(:pet).permit(:name, :species, :image, :c_pet)
end
