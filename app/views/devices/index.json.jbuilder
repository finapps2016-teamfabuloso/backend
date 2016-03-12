json.success 'true'
json.devices do json.array! @devices.each do |device|
    json.id device.id
    json.platform device.platform
    json.category device.category
    json.serial device.serial
    json.apps do json.array! device.apps do |app|
      json.id app.id
      json.name app.name
    end
    end
end
end