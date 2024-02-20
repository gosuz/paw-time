class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @shelters = Shelter.all
  end
end
