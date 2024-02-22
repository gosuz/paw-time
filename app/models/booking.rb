class Booking < ApplicationRecord
  belongs_to :shelter
  belongs_to :user

  validates :date, :time_slot,  presence: true
  validates :reason, presence: true
end
