
json.extract! @post, :id, :title, :details, :start_at, :end_at, :created_at, :updated_at, :claimed, :claimant_id, :completed
json.location do
  json.extract! @post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
end
json.supplier do
  json.extract! @post.supplier, :id, :first_name, :last_name, :organization
end
json.ignore_nil!
json.claimant @post.claimant


# json.claimant do
#   json.extract! @post.claimant, :id, :first_name, :last_name, :organization
# end
