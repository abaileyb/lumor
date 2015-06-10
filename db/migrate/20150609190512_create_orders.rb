class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product
      t.string :size
      t.text :comment
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end
