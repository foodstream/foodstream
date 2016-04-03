class FixPostColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :user_id, :supplier_id
  end
end
