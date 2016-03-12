class TrustedApplication < ActiveRecord::Base
  belongs_to :app
  belongs_to :device

  validates_presence_of :app_id, :device_id
  validates_uniqueness_of :app_id, scope: [:device_id]
end
