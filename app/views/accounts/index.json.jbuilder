json.success 'true'
json.accounts do json.array! @accounts.each do |account|
  json.id account.id
  json.name account.payment_processor.name
  json.image_url "#{ENV['BASE_URI']}#{account.payment_processor.image_url}"
  json.ccn account.ccn
end
end