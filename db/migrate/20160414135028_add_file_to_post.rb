class AddFileToPost < ActiveRecord::Migration
  def change
    add_attachment :posts, :post_image
  end
end
