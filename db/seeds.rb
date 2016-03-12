# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

payment_processors = [
    { name: 'Paypal', image_url: 'payment_processors/paypal.png' },
    { name: 'American Express', image_url: 'payment_processors/amex.png' },
    { name: 'Android Pay', image_url: 'payment_processors/androidpay.png' },
    { name: 'Apple Pay', image_url: 'payment_processors/applepay.png' },
    { name: 'Discover', image_url: 'payment_processors/discover.png' },
    { name: 'Google', image_url: 'payment_processors/google.png' },
    { name: 'Maestro', image_url: 'payment_processors/maestro.png' },
    { name: 'Mastercard', image_url: 'payment_processors/mastercard.png' },
    { name: 'Visa', image_url: 'payment_processors/visa.png' },
    { name: 'Bitcoin', image_url: 'payment_processors/bitcoin.png'}
]

payment_processors.each do |payment_processor|
  PaymentProcessor.create!(payment_processor)
end

Account.create!(payment_processor: PaymentProcessor.find_by(name: 'Bitcoin'), ccn: 'XXXXXXXXXXXXXXXXXXXXUgmE')
Account.create!(payment_processor: PaymentProcessor.find_by(name: 'Paypal'), ccn: 'kishan@gmail.com')
Account.create!(payment_processor: PaymentProcessor.find_by(name: 'Visa'), ccn: 'XXXX-XXXX-XXXX-3222')


Device.create!(platform: 'android', category: 'mobile', serial: 'IMIEXXXXXXXXXXXXX4432')
Device.create!(platform: 'ios', category: 'wearable', serial: 'IMIEXXXXXXXXXXXXX44212')
Device.create!(platform: 'ios', category: 'tablet', serial: 'IMIEXXXXXXXXXXXXX9932')


App.create!(name: 'Global Payments')
App.create!(name: 'Kroger')
App.create!(name: 'Nordstrom Rack')
App.create!(name: 'Sephora')

App.find_each do |app|
  Device.find_each do |device|
    TrustedApplication.create!(app_id: app.id, device_id: device.id)
  end
end

