class AddCompletedToPost < ActiveRecord::Migration
  def change
    add_column :posts, :completed, :boolean
    add_column :posts, :claimant_id, :integer
    rename_column :messages, :exchange_id, :post_id
  end
end
