json.success 'true'
json.trusted_applications do json.array! @trusted_apps.each do |app|
  json.id app.id
  json.device_id app.device_id
  json.app_id app.app_id
end
end