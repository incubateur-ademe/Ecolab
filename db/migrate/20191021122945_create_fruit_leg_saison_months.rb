class CreateFruitLegSaisonMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :fruit_leg_saison_months do |t|

      t.timestamps
    end
  end
end
