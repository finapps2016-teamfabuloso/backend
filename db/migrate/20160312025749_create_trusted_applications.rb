class CreateTrustedApplications < ActiveRecord::Migration
  def change
    create_table :trusted_applications do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
