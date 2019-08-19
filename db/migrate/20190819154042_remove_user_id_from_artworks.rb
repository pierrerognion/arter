class RemoveUserIdFromArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :user_id
  end
end
