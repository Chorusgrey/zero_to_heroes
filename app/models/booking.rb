class Booking < ApplicationRecord
  belongs_to :hero
  belongs_to :user
  # validates :booking_number, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :total_price, presence: true

  def total_price
    hero.price_per_day * (end_date - start_date + 1).to_i
  end
end
