class Booking < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :start_on, presence: true, allow_blank: false
  validates :end_on, presence: true, allow_blank: false
  validates :price, presence: true, allow_nil: false

  belongs_to :user
  belongs_to :venue
end
