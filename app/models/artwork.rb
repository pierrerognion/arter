class Artwork < ApplicationRecord
  ARTCATEGORY = ['Art Africain, Océanien et Pré-Colombien',
                 'Antiquités',
                 'Art Asiatique',
                 'Livres & Manuscrits',
                 'Beaux Arts',
                 'Meubles et Arts Décoratifs',
                 'Art Islamique et Moyen-Oriental',
                 'Photographies & Impressions',
                 'Science et Histoire Naturelle',
                 'Street Art']

  mount_uploader :picture, PictureUploader
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :picture, presence: true
end
