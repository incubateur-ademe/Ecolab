class AddDqGtoAliments < ActiveRecord::Migration[5.2]
  def change
    add_column :aliments, :dqr, :float
  end
end
