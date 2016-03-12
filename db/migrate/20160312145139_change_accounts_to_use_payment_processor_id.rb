class ChangeAccountsToUsePaymentProcessorId < ActiveRecord::Migration
  class Account < ActiveRecord::Base
  end

  class PaymentProcessor < ActiveRecord::Base
  end

  def change
    Account.find_each do |account|
      payment_processor = PaymentProcessor.find_by(name: account.name)
      account.payment_processor_id = payment_processor.id
    end

    remove_column :accounts, :name
  end

end
