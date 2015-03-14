class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :lender_id
      t.integer :borrower_id
      t.integer :tool_id
      t.date :start_day
      t.date :end_day

      t.timestamps null: false
    end
  end
end
