json.array!(@bottles) do |bottle|
  json.extract! bottle, :id, :name, :bottle_type_id
  json.url bottle_url(bottle, format: :json)
end
