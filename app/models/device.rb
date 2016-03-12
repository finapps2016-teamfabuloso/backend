class Device < ActiveRecord::Base

  validates_presence_of :platform, :serial, :category

  enum platform: [ :android, :ios ]

  enum category: [ :wearable, :mobile, :tablet ]

end
