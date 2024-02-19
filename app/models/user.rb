class User < ApplicationRecord
  has_many :shelters, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :bookings, through: :shelters, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
