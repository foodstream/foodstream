class RemoveImageLinkFromUser < ActiveRecord::Migration
  def change
    remove_column :posts, :image_link, :string
    remove_column :users, :image_link, :string
  end
end
