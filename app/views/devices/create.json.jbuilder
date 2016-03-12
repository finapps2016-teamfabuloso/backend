json.success 'true'
json.device do
  json.id @device.id
  json.platform @device.platform
  json.category @device.category
  json.serial @device.serial
end
