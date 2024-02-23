class Booking < ApplicationRecord
  def pending?
    status == 'Pending'
  end

  belongs_to :shelter
  belongs_to :user
  TIME_SLOT = ["Morning: 10AM - 12PM", "Afternoon: 1PM - 3PM
    ", "Evening: 4PM - 6PM"]
  validates :time_slot, inclusion: { in: TIME_SLOT }
  validates :date,  presence: true
  validates :reason, presence: true
end
