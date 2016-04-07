json.array! @posts do |post|
  json.extract! post, :id, :title, :details, :start_at, :end_at, :supplier_id, :claimed, :completed, :claimant_id
  json.location do
    json.extract! post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
  end
  json.supplier do
    json.extract! post.supplier, :id, :first_name, :last_name, :organization
  end
  if post.claimant
    json.claimant post.claimant, :id, :first_name, :last_name, :organization
  end
end
