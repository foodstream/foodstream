class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :company, :organization
  end
end
