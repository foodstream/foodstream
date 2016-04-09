class AddColumnsToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :locations, :long, :decimal, {:precision=>10, :scale=>6}
    add_column :locations, :address_string, :string
  end
end
