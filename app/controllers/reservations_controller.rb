class ReservationsController < ApplicationController

  def index
    @reservations = Reservations.all
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Tool.find(params[:id])
  end



  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.borrower_id = current_user.id
    @reservation.tool_id = Tool.find(params[:id])
    @reservation.lender_id = Tool.find(params[:user_id])
    if @reservation.save
      redirect_to root_path

    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  private

    def reservation_params
      params.require(:reservation).permit(:borrower_id, :lender_id, :tool_id, :start_day, :end_day)
    end

end
