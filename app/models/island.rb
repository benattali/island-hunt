class Island < ApplicationRecord
  DIFFICULTY = %w[Easy Medium Hard]

  belongs_to :user
  has_many :reviews
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
  validates :activities, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :difficulty, presence: true, inclusion: { in: DIFFICULTY }
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
