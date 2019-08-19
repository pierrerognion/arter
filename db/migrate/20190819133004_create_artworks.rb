class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :width
      t.integer :depth
      t.integer :height
      t.integer :weight
      t.integer :price
      t.boolean :availability, default: true
      t.string :location
      t.string :picture

      t.timestamps
    end
  end
end
