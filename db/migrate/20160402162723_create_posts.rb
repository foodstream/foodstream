class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :details
      t.datetime :start_at
      t.datetime :end_at
      t.integer :user_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
