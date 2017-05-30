class CreateChildOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :child_orders do |t|
      t.references :orders, foreign_key: true

      t.timestamps
    end
  end
end
