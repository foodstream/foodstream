json.array!(@posts) do |post|
  json.extract! post, :id, :title, :details, :start_at, :end_at, :user_id, :location_id
  json.url post_url(post, format: :json)
end
