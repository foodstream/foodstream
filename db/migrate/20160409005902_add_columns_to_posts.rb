class AddColumnsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :posts, :long, :decimal, {:precision=>10, :scale=>6}
    add_column :posts, :address_string, :string
  end
end
