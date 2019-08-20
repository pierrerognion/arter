class Artwork < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :bookings
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :picture, presence: true
end
