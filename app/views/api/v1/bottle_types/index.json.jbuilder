json.array!(@bottle_types) do |bottle_type|
  json.extract! bottle_type, :id, :name
  json.url bottle_type_url(bottle_type, format: :json)
end
