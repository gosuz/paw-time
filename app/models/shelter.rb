class Shelter < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :location, :user, presence: true
  validates :capacity, numericality: { greater_than: 0 }, presence: true
end
