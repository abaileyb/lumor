class AddPriceToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :price, :integer
  end
end
