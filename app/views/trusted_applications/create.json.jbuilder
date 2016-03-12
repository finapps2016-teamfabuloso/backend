json.success 'true'
json.trusted_application do
  json.id @trusted_app.id
  json.name @trusted_app.name
end