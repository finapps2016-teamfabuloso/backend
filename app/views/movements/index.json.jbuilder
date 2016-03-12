json.success 'true'
json.movements do json.array! @movements.each do |movement|
  json.id movement.id
  json.price movement.price
  json.item movement.item
  json.nfc_tag movement.nfc_tag
  json.account do
    json.id movement.account.id
    json.name movement.account.name
    json.number movement.account.ccn
  end
  json.device do
    json.id movement.device.id
    json.platform movement.device.platform
    json.category movement.device.category
  end
  json.merchant do
    json.app_id movement.app.id
    json.name movement.app.name
  end
  json.date movement.created_at.in_time_zone('EST').strftime("%m-%d-%Y")
  json.time movement.created_at.in_time_zone('EST').strftime("%T")
end
end