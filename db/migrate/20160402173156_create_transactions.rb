class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :claimant_id
      t.integer :post_id
      t.boolean :claimed
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
