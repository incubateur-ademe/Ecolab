class AddingResultFieldtoSimulation < ActiveRecord::Migration[5.2]
  def change
    add_column :simulations, :result, :string
  end
end
