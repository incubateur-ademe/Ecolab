class CreateSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :simulations do |t|
      t.date :ask_month
      t.string :ask_fruit

      t.timestamps
    end
  end
end
