json.success 'true'
json.movement do
  json.id @movement.id
  json.price @movement.price
  json.item @movement.item
  json.nfc_tag @movement.nfc_tag
  json.account_id @movement.account_id
  json.app_id @movement.app_id
  json.device_id @movement.device_id
end
