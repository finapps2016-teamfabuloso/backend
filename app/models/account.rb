class Account < ActiveRecord::Base
  has_many :movements
  belongs_to :payment_processor

  validates_presence_of :payment_processor_id, :ccn
  validates_uniqueness_of :ccn
end
