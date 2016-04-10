json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :organization, :location_id, :description, :latitude, :longitude, :address_string, :image_link
  json.url user_url(user, format: :json)
end
