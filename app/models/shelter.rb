class Shelter < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :pets
  # added this line
  has_many_attached :photos

  validates :name, :location, :user, presence: true
  validates :capacity, numericality: { greater_than: 0 }, presence: true
end
