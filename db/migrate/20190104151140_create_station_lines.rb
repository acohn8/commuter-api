class CreateStationLines < ActiveRecord::Migration[5.2]
  def change
    create_table :station_lines do |t|
      t.integer :station_id
      t.integer :line_id
      t.timestamps
    end
  end
end
