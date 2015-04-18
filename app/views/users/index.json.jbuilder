json.array!(@users) do |user|
  json.extract! user, :id, :name, :romaji, :interest, :hobby, :skill, :interest
  json.url user_url(user, format: :json)
end
