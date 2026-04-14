# # choose what to send in json by adding/deleting :xyz
json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
end
