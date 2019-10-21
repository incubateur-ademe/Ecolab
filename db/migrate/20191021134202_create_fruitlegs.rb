class CreateFruitlegs < ActiveRecord::Migration[5.2]
  def change
    create_table :fruitlegs do |t|
      t.string :label
      t.string :category
      t.string :month, array: true

      t.timestamps
    end
  end
end
