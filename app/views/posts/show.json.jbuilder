
json.extract! @post, :id, :title, :details, :claimed, :claimant_id, :completed, :latitude, :longitude, :address_string, :image_link
json.start_at @post.start_at.strftime("%m/%d/%Y %I:%M%p")
json.end_at @post.end_at.strftime("%m/%d/%Y %I:%M%p")
if @post.location
  json.location  @post.location, :id, :address_1, :address_2, :city, :state, :zip_code, :nickname
end
json.supplier @post.supplier, :id, :first_name, :last_name, :organization
if @post.claimant
  json.claimant @post.claimant, :id, :first_name, :last_name, :organization
end
