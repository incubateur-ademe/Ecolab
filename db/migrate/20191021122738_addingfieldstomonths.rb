class Addingfieldstomonths < ActiveRecord::Migration[5.2]
  def change
    add_column :months, :name_of_month, :string
  end
end
