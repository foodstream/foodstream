json.array! @posts do |post|
  if !post.claimed
    json.extract! post, :id, :title, :details, :start_at, :end_at, :supplier_id, :claimed, :completed, :claimant_id
    json.location do
      json.extract! post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
    end
    json.supplier do
      json.extract! post.supplier, :id, :first_name, :last_name, :organization
    end
    json.url post_url(post, format: :json)
  end
end
