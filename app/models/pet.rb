class Pet < ApplicationRecord
  belongs_to :shelter
  has_one_attached :c_pet

  # image doesn't need validation
  validates :name, :species, presence: true
end
