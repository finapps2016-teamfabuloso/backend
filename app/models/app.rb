class App < ActiveRecord::Base
  has_many :trusted_applications
  has_many :devices, through: :trusted_applications
  has_many :movements

  validates_presence_of :name
  validates_uniqueness_of :name
end
