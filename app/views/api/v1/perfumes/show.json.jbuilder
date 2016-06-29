if !@perfume.nil?
  if @perfume.valid?
    json.status "ok"
    json.message "Perfume fetched successfully"
    json.perfume @perfume
  else
    json.success false
    json.message @perfume.errors
  end
else
  json.success false
  json.message "Perfume not found"
end
