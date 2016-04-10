json.array! @posts do |post|
  json.extract! post, :id, :title, :details, :start_at, :end_at, :supplier_id, :claimed, :completed, :claimant_id, :latitude, :longitude, :address_string, :image_link
  if post.location
    json.location do
      json.extract! post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
    end
  end
  json.supplier do
    json.extract! post.supplier, :id, :first_name, :last_name, :organization
  end
  if post.claimant
    json.claimant post.claimant, :id, :first_name, :last_name, :organization
  end
end


json.array! @claims do |claim|
  json.extract! claim, :id, :title, :details, :start_at, :end_at, :supplier_id, :claimed, :completed, :claimant_id, :latitude, :longitude, :address_string, :image_link
  if claim.location
    json.location do
      json.extract! claim.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
    end
  end
  json.supplier do
    json.extract! claim.supplier, :id, :first_name, :last_name, :organization
  end
  if claim.claimant
    json.claimant claim.claimant, :id, :first_name, :last_name, :organization
  end
end
