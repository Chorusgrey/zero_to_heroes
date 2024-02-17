class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :bookings_as_tenant, class_name: "Booking", dependent: :destroy, foreign_key: "user_id"
  has_many :heros, dependent: :destroy
  has_many :bookings_as_owner, through: :heros, source: :bookings
  validates :email, presence: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one_attached :photo
end
