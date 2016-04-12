class ChangeLatLongColumns < ActiveRecord::Migration
  def change
    change_column :posts, :latitude, 'decimal USING CAST(latitude AS numeric(12,7))'
    change_column :posts, :longitude, 'decimal USING CAST(longitude AS numeric(12,7))'
    change_column :users, :latitude, 'decimal USING CAST(latitude AS numeric(12,7))'
    change_column :users, :longitude, 'decimal USING CAST(longitude AS numeric(12,7))'
    change_column :locations, :latitude, 'decimal USING CAST(latitude AS numeric(12,7))'
    change_column :locations, :longitude, 'decimal USING CAST(longitude AS numeric(12,7))'
  end
end
