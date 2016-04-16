json.array! @posts do |post|
  if !post.claimed
    json.extract! post, :id, :title, :details, :supplier_id, :claimed, :completed, :claimant_id, :latitude, :longitude, :address_string
    json.start_at post.start_at.strftime("%Y/%m/%d %I:%M%p")
    json.end_at post.end_at.strftime("%Y/%m/%d %I:%M%p")
    if post.location
      json.location do
        json.extract! post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
      end
    end
    json.supplier do
      json.extract! post.supplier, :id, :first_name, :last_name, :organization
    end
    json.url post_url(post, format: :json)
  end
end
