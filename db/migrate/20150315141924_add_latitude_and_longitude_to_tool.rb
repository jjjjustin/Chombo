class AddLatitudeAndLongitudeToTool < ActiveRecord::Migration
  def change
    add_column :tools, :latitude, :float
    add_column :tools, :longitude, :float
  end
end
