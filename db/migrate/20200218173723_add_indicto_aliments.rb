class AddIndictoAliments < ActiveRecord::Migration[5.2]
  def change
    add_column :aliments, :indic_15, :float
    add_column :aliments, :indic_16, :float
  end
end
