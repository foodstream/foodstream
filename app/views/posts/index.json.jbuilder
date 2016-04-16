json.array! @posts do |post|
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
    json.supplier_average_rating post.supplier.average_rating

  end
  if post.claimant
    json.claimant post.claimant, :id, :first_name, :last_name, :organization
    json.claimant_average_rating post.claimant.average_rating

  end
end


json.array! @claims do |claim|
  json.extract! claim, :id, :title, :details, :supplier_id, :claimed, :completed, :claimant_id, :latitude, :longitude, :address_string
  json.start_at claim.start_at.strftime("%Y/%m/%d %I:%M%p")
  json.end_at claim.end_at.strftime("%Y/%m/%d %I:%M%p")
  if claim.location
    json.location do
      json.extract! claim.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
    end
  end
  json.supplier do
    json.extract! claim.supplier, :id, :first_name, :last_name, :organization
    json.supplier_average_rating claim.supplier.average_rating
  end
  if claim.claimant
    json.claimant claim.claimant, :id, :first_name, :last_name, :organization
    json.claimant_average_rating claim.claimant.average_rating

  end
end
