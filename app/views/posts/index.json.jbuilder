json.array! @posts do |post|
  json.extract! post, :id, :title, :details, :supplier_id, :claimed, :completed, :claimant_id, :latitude, :longitude, :address_string
  json.start_at post.start_at.strftime("%Y/%m/%d %I:%M%p")
  json.end_at post.end_at.strftime("%Y/%m/%d %I:%M%p")

  json.supplier do
    json.extract! post.supplier, :id, :first_name, :last_name, :organization
    json.supplier_average_rating post.supplier.average_rating
  end

  if post.claimant
    json.claimant post.claimant, :id, :first_name, :last_name, :organization
    json.claimant_average_rating post.claimant.average_rating

  end
end
