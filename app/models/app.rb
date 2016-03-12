class App < ActiveRecord::Base
  has_many :devices, through: :trusted_applications
  validates_presence_of :name

end
