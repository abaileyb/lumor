class AddItemToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :item, index: true, foreign_key: true
  end
end
