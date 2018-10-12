class AddColumnsToStation < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :lat, :float
    add_column :stations, :lng, :float
    add_column :stations, :address, :string
  end
end
