class DropIngredients < ActiveRecord::Migration[5.2]
  def change
    drop_table :ingredients
  end
end
