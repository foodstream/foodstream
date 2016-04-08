json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :password_digest, :email, :organization, :location_id, :description
  json.url user_url(user, format: :json)
end
