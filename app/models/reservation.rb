class Reservation < ActiveRecord::Base
belongs_to :borrower, :class_name => "User"
belongs_to :lender, :class_name => "User"
belongs_to :tool

  def reservation_borrower_id
    @reservation.borrower_id
  end

  def reservation_lender_id
    @reservation.lender_id
  end

  def self.tool_name

  end

end

