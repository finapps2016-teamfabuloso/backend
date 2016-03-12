json.success 'true'
json.device do
  json.id @device.id
  json.platform @device.platform
  json.type @device.category
  json.serial @device.serial
end
