class Field < ApplicationRecord
  has_many :users, through: :booking
  has_many :bookings, dependent: :destroy

  validates :location, presence: true
  validates :price, presence: true, numericality: true, default: 0
  validates :type, presence: true, default: 0
end
