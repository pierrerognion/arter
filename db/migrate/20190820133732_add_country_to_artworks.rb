class AddCountryToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :country, :string
  end
end
