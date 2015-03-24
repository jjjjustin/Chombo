class UsersController < ApplicationController
  before_action :set_user, only: [:create, :show, :edit, :update, :destroy]

  def index
    @users = User.all
    @tools = @user.tools
    @reservations = Reservation.find(params[:user_id])
  end

  def show
    @user = User.find(params[:id])
    @reservation_messages = Message.all.where(:receiver_id => current_user.id).where.not(:reservation_id => nil)
    @messages = Message.all.where(:sender_id => current_user.id).where(:reservation_id => nil)
    @borrower_res = Reservation.where(:borrower_id => current_user.id)
    @lender_res = Reservation.where(:lender_id => current_user.id)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def profile_view
    @user = User.find(params[:user_id])
    @review = Review.all.where(:user_id => params[:user_id])
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        redirect_to user_path
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :street_address, :state, :zip, :phone_number, :avatar)
    end
end
