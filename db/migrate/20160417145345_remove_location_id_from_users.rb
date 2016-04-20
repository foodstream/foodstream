class RemoveLocationIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :posts, :location_id, :integer
    remove_column :users, :location_id, :integer
  end
end
