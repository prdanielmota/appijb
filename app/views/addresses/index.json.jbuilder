json.array!(@addresses) do |address|
  json.extract! address, :id, :zip_code, :name_street, :number_street, :complement, :member_id
  json.url address_url(address, format: :json)
end
