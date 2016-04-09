require 'byebug'

class Location < ActiveRecord::Base
  # def initialize(latitude, longitude, address_string)
  #   byebug
  #   location = Location.where("latitude = ? and longitude = ?", latitude, longitude)
  #   if location
  #     location
  #   else
  #     self.latitude = latitude
  #     self.longitude = longitude
  #     self.address_string = address_string
  #     self
  #   end
  #   super
  # end
end
