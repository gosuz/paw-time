class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @shelters = Shelter.all
  end
end
