class PaymentProcessor < ActiveRecord::Base
  has_many :accounts

  validates_presence_of :name, :image_url

  validates_uniqueness_of :name

end
