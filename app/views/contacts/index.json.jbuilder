json.array!(@contacts) do |contact|
  json.extract! contact, :id, :type, :description, :address_id
  json.url contact_url(contact, format: :json)
end
