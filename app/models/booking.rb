class Booking < ApplicationRecord
  belongs_to :heroe
  belongs_to :user
  validates :booking_number, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
end
