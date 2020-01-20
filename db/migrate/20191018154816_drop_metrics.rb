class DropMetrics < ActiveRecord::Migration[5.2]
  def change
    drop_table :metrics
  end
end
