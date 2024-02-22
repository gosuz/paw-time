class Shelter < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :pets, dependent: :destroy

  has_one_attached :c_logo
  has_one_attached :c_banner

  validates :name, :location, presence: true
  validates :capacity, numericality: { greater_than: 0 }, presence: true
end
