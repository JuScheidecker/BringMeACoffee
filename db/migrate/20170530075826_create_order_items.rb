class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.references :items, foreign_key: true
      t.references :orders, foreign_key: true

      t.timestamps
    end
  end
end
