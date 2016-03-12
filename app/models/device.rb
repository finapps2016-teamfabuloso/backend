class Device < ActiveRecord::Base
  has_many :trusted_applications
  has_many :apps, through: :trusted_applications

  validates_presence_of :platform, :serial, :category

  enum platform: [ :android, :ios ]

  enum category: [ :wearable, :mobile, :tablet ]

end
