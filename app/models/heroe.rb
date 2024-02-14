class Heroe < ApplicationRecord
  belongs_to :user, through: :bookings
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :available, inclusion: { in: [true, false] }
  validates :price_per_day, presence: true
end
