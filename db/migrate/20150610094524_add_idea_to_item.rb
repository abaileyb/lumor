class AddIdeaToItem < ActiveRecord::Migration
  def change
    add_reference :items, :idea, index: true, foreign_key: true
  end
end
