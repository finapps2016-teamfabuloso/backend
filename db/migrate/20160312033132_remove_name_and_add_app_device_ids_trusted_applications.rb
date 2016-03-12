class RemoveNameAndAddAppDeviceIdsTrustedApplications < ActiveRecord::Migration
  def change
    remove_column :trusted_applications, :name
    add_column :trusted_applications, :app_id, :integer
    add_column :trusted_applications, :device_id, :integer
  end
end
