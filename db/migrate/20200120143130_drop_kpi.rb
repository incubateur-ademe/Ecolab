class DropKpi < ActiveRecord::Migration[5.2]
  def change
    drop_table :kpis
  end
end
