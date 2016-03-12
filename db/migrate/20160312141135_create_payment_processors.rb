class CreatePaymentProcessors < ActiveRecord::Migration
  def change
    create_table :payment_processors do |t|
      t.string :name
      t.string :image_url

      t.timestamps null: false
    end
  end
end
