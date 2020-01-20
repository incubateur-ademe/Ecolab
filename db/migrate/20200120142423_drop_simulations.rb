class DropSimulations < ActiveRecord::Migration[5.2]
  def change
    drop_table :simulations
  end
end
