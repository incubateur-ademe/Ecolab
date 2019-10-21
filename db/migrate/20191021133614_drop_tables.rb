class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :dum
    drop_table :fruit_leg_saison_months
    drop_table :fruit_saisons
    drop_table :months
    drop_table :saisons

  end
end
