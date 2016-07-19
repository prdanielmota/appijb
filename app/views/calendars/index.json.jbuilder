json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :event, :repeat, :description, :status, :group_id
  json.url calendar_url(calendar, format: :json)
end
