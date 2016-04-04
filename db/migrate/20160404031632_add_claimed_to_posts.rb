class AddClaimedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :claimed, :boolean
  end
end
