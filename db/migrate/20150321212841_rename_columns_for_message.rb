class RenameColumnsForMessage < ActiveRecord::Migration
  def change
    rename_column :messages, :borrower_id, :receiver_id
    rename_column :messages, :lender_id, :sender_id
  end
end
