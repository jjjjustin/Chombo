class AddColumnsToTools < ActiveRecord::Migration
  def change
    add_column :tools, :condition, :string
    add_column :tools, :description, :text
  end
end
