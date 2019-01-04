class AddNameToLines < ActiveRecord::Migration[5.2]
  def change
    add_column :lines, :name, :string
  end
end
