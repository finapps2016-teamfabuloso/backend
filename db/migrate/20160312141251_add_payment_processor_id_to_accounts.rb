class AddPaymentProcessorIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :payment_processor_id, :integer
  end
end
