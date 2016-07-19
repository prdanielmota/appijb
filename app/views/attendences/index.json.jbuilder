json.array!(@attendences) do |attendence|
  json.extract! attendence, :id, :calendar_id, :classe_id, :member_id, :checkin
  json.url attendence_url(attendence, format: :json)
end
