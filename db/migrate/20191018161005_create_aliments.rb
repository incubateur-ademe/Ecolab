class CreateAliments < ActiveRecord::Migration[5.2]
  def change
    create_table :aliments do |t|

      t.timestamps
    end
  end
end
