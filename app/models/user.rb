class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :artworks
  has_many :bookings

  def get_bookings
    self.artworks.map { |artw| artw.bookings }.flatten
  end
end
