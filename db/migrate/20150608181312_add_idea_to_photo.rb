class AddIdeaToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :idea, index: true, foreign_key: true
  end
end
