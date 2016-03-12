class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :platform, null: false
      t.integer :category, null: false
      t.string :serial, null: false

      t.timestamps null: false
    end
  end
end
