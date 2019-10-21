class CreateSaisons < ActiveRecord::Migration[5.2]
  def change
    create_table :saisons do |t|

      t.timestamps
    end
  end
end
