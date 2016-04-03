class FixColumnNameReview < ActiveRecord::Migration
  def change
    rename_column :ratings, :reviewed_id, :user_id
  end
end
