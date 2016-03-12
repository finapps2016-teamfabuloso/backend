json.success 'true'
json.account do
  json.id @account.id
  json.name @account.payment_processor.name
  json.image_url "#{ENV['BASE_URI']}#{@account.payment_processor.image_url}"
  json.ccn @account.ccn
end