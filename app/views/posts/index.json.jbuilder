json.array! @posts do |post|
  json.extract! post, :id, :title, :details, :start_at, :end_at, :supplier_id
  json.location do
    json.extract! post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
  end
  json.url post_url(post, format: :json)
end
