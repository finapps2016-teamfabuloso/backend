class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.string :ccn, null: false

      t.timestamps null: false
    end
  end
end
