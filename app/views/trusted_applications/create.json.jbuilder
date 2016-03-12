json.success 'true'
json.trusted_application do
  json.id @trusted_app.id
  json.device_id @trusted_app.device_id
  json.app_id @trusted_app.app_id
end