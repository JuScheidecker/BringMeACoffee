class AddHorariesToShops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :horaries, :string
  end
end
