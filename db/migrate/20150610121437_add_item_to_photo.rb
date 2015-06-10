class AddItemToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :item, index: true, foreign_key: true
  end
end
