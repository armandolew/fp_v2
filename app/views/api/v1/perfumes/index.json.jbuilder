json.status "ok"
json.message "Perfumes fetched successfully"
json.perfumes @perfumes do |perfume|
  json.extract! perfume, :id, :name, :trend, :family_type_id, :perfume_type_id
end