class AddreferencestoMetrics < ActiveRecord::Migration[5.2]
  def change
    add_reference :metrics, :kpi, foreign_key: true
    add_reference :metrics, :ingredient, foreign_key: true
  end
end
