class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :price
      t.integer :total

      t.timestamps
    end
  end
end
