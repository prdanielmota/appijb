json.array!(@classes) do |class|
  json.extract! class, :id, :group_id, :member_id
  json.url class_url(class, format: :json)
end
