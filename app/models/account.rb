class Account < ActiveRecord::Base
  has_many :movements

  validates_presence_of :name, :ccn
  validates_uniqueness_of :ccn
end
