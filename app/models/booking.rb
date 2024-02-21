class Booking < ApplicationRecord
  belongs_to :shelter
  belongs_to :user
  before_validation :set_default

  validates :date, :time_slot, :shelter, :user, presence: true
  validates :reason, presence: true

  # t.boolean "status" booking
  private
  def set_default
    status = true if status.blank?
  end

end
