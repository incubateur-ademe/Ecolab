class AddingfieldstoFruitLegSaisonMonth < ActiveRecord::Migration[5.2]
  def change
    add_reference :fruit_leg_saison_months, :month, foreign_key: true
    add_reference :fruit_leg_saison_months, :saison, foreign_key: true
  end
end
