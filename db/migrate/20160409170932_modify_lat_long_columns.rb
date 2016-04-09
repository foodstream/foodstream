class ModifyLatLongColumns < ActiveRecord::Migration
  def change
    change_column :posts, :lat, :string
    change_column :posts, :long, :string
    change_column :users, :lat, :string
    change_column :users, :long, :string
    change_column :locations, :lat, :string
    change_column :locations, :long, :string

    rename_column :posts, :lat, :latitude
    rename_column :posts, :long, :longitude
    rename_column :users, :lat, :latitude
    rename_column :users, :long, :longitude
    rename_column :locations, :lat, :latitude
    rename_column :locations, :long, :longitude

  end
end
