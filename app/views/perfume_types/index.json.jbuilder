json.array!(@perfume_types) do |perfume_type|
  json.extract! perfume_type, :id, :name
  json.url perfume_type_url(perfume_type, format: :json)
end
