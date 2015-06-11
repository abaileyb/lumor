class CreateFixits < ActiveRecord::Migration
  def change
    create_table :fixits do |t|
      t.string :name
      t.text :description
      t.string :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
