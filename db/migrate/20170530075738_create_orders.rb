class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.boolean :status
      t.boolean :delivery_type
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
