json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :organization, :location_id, :description, :latitude, :longitude, :address_string
  json.average_rating user.average_rating
  json.url user_url(user, format: :json)
end
