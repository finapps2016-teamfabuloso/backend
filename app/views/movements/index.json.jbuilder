json.success 'true'
json.movements do json.array! @movements.each do |movement|
  json.id movement.id
  json.price movement.price
  json.item movement.item
  json.nfc_tag movement.nfc_tag
  json.account_id movement.account_id
  json.device_id movement.device_id
  json.app_id movement.app_id
  json.created_at movement.created_at
end
end