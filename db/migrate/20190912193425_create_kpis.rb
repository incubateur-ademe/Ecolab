class CreateKpis < ActiveRecord::Migration[5.2]
  def change
    create_table :kpis do |t|
      t.string :label
      t.string :category
      t.string :description
      t.float :value
      t.string :unit

      t.timestamps
    end
  end
end
