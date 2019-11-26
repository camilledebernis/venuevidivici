class Venue < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :description, length: { minimum: 5 }
  validates :price, presence: true, allow_nil: false

  belongs_to :user
  has_many :bookings
end
