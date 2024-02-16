class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :heroes, through: :bookings
  has_many :bookings
  has_many :heroes, dependent: :destroy, class_name: "Heroe"
  has_many :bookings_as_owner, through: :heroes, source: :bookings
  validates :email, presence: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many_attached :photos
end
