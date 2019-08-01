class Transport < ApplicationRecord
  CATEGOTY = ['Airplane', 'Helicopter', 'Boat', 'Submarine']
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  validates :category, presence: true, inclusion: { in: CATEGOTY }
end
