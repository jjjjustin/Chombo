class AddBodySenderAndReceiverToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :body, :text
    add_column :messages, :borrower_id, :integer
    add_column :messages, :lender_id, :integer
  end
end
