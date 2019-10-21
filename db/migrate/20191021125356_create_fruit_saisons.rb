class CreateFruitSaisons < ActiveRecord::Migration[5.2]
  def change
    create_table :fruit_saisons do |t|
      t.references :month, foreign_key: true
      t.references :saison, foreign_key: true

      t.timestamps
    end
  end
end
