class FixTranactionColumnName < ActiveRecord::Migration
  def change
    rename_column :messages, :transaction_id, :exchange_id
  end
end
