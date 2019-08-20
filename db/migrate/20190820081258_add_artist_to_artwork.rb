class AddArtistToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :artist, :string
  end
end
