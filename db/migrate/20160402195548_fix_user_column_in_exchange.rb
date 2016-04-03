class FixUserColumnInExchange < ActiveRecord::Migration
  def change
    rename_column :exchanges, :claimant_id, :user_id
  end
end
