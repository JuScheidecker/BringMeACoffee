class RenameLngToLongitudeInShops < ActiveRecord::Migration[5.0]
  def up
    rename_column :shops, :lng, :longitude
  end

  def down
    rename_column :shops, :longitude, :lng
  end
end
