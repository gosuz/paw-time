class Shelter < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :pets, dependent: :destroy
  has_one_attached :logo
  has_one_attached :banner

  validates :name, :location, :user, presence: true
  validates :capacity, numericality: { greater_than: 0 }, presence: true
end
