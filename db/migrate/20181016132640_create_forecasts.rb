class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |t|
      t.float :lat
      t.string :lng
      t.string :float
    end
  end
end
