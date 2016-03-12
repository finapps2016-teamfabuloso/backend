class Movement < ActiveRecord::Base
  belongs_to :account
  belongs_to :app
  belongs_to :device

  validates_presence_of :item, :price, :nfc_tag, :account_id, :app_id, :device_id

end
