class AddDescription < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :description, :string
  end
end
