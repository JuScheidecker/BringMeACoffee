class RenameLatToLatitudeInShops < ActiveRecord::Migration[5.0]
  def up
    rename_column :shops, :lat, :latitude
  end

  def down
    rename_column :shops, :latitude, :lat
  end
end
