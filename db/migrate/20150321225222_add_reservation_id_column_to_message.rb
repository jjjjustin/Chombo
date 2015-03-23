class AddReservationIdColumnToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :reservation_id, :integer
  end
end
