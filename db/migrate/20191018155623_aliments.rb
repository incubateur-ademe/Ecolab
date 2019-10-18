class Aliments < ActiveRecord::Migration[5.2]
  def change
    create_table :aliments do |t|
      t.integer :alim_code
      t.string :alim_nom_fr
      t.string :alim_nom_en
      t.string :alim_grp_nom_fr
      t.string :alim_ssgrp_nom_fr
      t.string :alim_ssssgrp_nom_fr
      t.float :indic_1
      t.float :indic_2
      t.float :indic_3
      t.float :indic_4
      t.float :indic_5
      t.float :indic_6
      t.float :indic_7
      t.float :indic_8
      t.float :indic_9
      t.float :indic_10
      t.float :indic_11
      t.float :indic_12
      t.float :indic_13
      t.float :indic_14

      t.timestamps
    end
  end
end
