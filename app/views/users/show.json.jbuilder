json.extract! @user, :id, :first_name, :last_name, :email, :organization, :description, :latitude, :longitude, :address_string, :image_link
json.profile_image @user.profile_image.url
