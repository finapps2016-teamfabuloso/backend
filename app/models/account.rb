class Account < ActiveRecord::Base
  validates_presence_of :name, :ccn
  validates_uniqueness_of :ccn
end
