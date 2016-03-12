class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.decimal :price, :precision => 16, :scale => 2, :null => false, :default => '0'
      t.string :item, null: false
      t.string :nfc_tag, null: false
      t.integer :account_id, null: false
      t.integer :app_id, null: false
      t.integer :device_id, null: false

      t.timestamps null: false
    end
  end
end
