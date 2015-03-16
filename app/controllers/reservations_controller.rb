class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @tool = Tool.find(params[:tool_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.borrower_id = current_user.id
    @reservation.tool_id = params[:tool_id]
    @reservation.lender_id = Tool.find(params[:tool_id]).user_id
    if @reservation.save
      redirect_to root_path
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

   def show
    @reservation = Tool.find(params[:id])
    @tool = Tool.find(params[:id])
  end

  private

    def reservation_params
      params.require(:reservation).permit(:borrower_id, :lender_id, :tool_id, :start_day, :end_day)
    end

end
