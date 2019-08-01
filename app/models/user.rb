class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :islands, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }
  mount_uploader :photo, PhotoUploader
end
