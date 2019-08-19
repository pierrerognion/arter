class AddUserToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_reference :artworks, :user, foreign_key: true
  end
end
