json.array!(@perfumes) do |perfume|
  json.extract! perfume, :id, :name, :trend, :family_type_id, :perfume_type_id
  json.url perfume_url(perfume, format: :json)
end
