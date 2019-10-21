class AddingfieldstoSaison < ActiveRecord::Migration[5.2]
  def change
    add_column :saisons, :name_of_fruit_or_legume, :string
    add_column :saisons, :category, :string
  end
end
