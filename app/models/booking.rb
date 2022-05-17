class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :field

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  enum status: {
    pending: 0,
    confirmed: 1,
    declined: 2
  }
end
