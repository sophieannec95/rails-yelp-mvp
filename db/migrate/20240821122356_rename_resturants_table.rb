class RenameResturantsTable < ActiveRecord::Migration[7.1]
  def change
    rename_table :resturants, :restaurants
  end
end
