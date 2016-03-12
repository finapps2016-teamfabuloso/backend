class TrustedApplication < ActiveRecord::Base
  belongs_to :app
  belongs_to :device
end
