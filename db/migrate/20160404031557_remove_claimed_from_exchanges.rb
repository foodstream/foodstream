class RemoveClaimedFromExchanges < ActiveRecord::Migration
  def change
    remove_column :exchanges, :claimed, :boolean
  end
end
