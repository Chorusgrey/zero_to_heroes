class Hero < ApplicationRecord
  belongs_to :user, class_name: "User"
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :name, presence: true
  validates :description, presence: true
  # validates :available, inclusion: { in: [true, false] }
  validates :price_per_day, presence: true
end
