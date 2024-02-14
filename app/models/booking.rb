class Booking < ApplicationRecord
  belongs_to :hero
  belongs_to :user
end
