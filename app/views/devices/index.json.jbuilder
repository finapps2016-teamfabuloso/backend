json.success 'true'
json.devices do json.array! @devices.each do |device|
    json.id device.id
    json.platform device.platform
    json.category device.category
    json.serial device.serial
end
end