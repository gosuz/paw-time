class Pet < ApplicationRecord
  belongs_to :shelter
  has_one_attached :c_pet

  # image doesn't need validation
  SPECIES = ["Dog", "Cat"]
  validates :species, inclusion: { in: SPECIES }
  validates :name, presence: true
end
