json.array!(@members) do |member|
  json.extract! member, :id, :name, :birthday, :social_security, :status, :hierarchy
  json.url member_url(member, format: :json)
end
