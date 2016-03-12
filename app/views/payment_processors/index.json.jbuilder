json.success 'true'
json.payment_processors json.array! @payment_processors do |payment_processor|
  json.id payment_processor.id
  json.name payment_processor.name
  json.image_url "#{ENV['BASE_URI']}#{payment_processor.image_url}"
end