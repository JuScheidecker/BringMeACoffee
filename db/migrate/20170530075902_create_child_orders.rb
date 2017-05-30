class CreateChildOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :child_orders do |t|
      t.references :order, foreign_key: true
      t.references :main_order, index: true

      t.timestamps
    end
  end
end
