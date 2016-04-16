json.extract! @user, :id, :first_name, :last_name, :email, :organization, :description, :latitude, :longitude, :address_string
json.profile_image @user.profile_image.url
json.average_rating @user.average_rating
