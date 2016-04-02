class AddXtoTransaction < ActiveRecord::Migration
  def change
    rename_table :transactions, :exchanges
  end
end
