class ModifyColumnSimulation < ActiveRecord::Migration[5.2]
  def change
    change_column :simulations, :ask_month, :string
  end
end
