json.success 'true'
json.apps do json.array! @apps.each do |app|
  json.id app.id
  json.name app.name
end
end