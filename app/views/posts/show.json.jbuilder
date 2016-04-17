
json.extract! @post, :id, :title, :details, :claimed, :claimant_id, :completed, :latitude, :longitude, :address_string
json.post_image @post.post_image.url
json.start_at @post.start_at.strftime("%Y/%m/%d %I:%M%p")
json.end_at @post.end_at.strftime("%Y/%m/%d %I:%M%p")

json.supplier @post.supplier, :id, :first_name, :last_name, :organization
json.supplier_average_rating @post.supplier.average_rating

if @post.claimant
  json.claimant @post.claimant, :id, :first_name, :last_name, :organization
  json.claimant_average_rating @post.claimant.average_rating
end
