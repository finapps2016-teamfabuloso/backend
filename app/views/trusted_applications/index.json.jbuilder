json.success 'true'
json.trusted_applications do json.array! @trusted_apps.each do |app|
  json.id app.id
  json.name app.name
end
end