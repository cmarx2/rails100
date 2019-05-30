class AddIndexToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :artist_id, :string
    add_index :artists, :artist_id
  end
end
