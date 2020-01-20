class DropFruitlegs < ActiveRecord::Migration[5.2]
  def change
    drop_table :fruitlegs
  end
end
