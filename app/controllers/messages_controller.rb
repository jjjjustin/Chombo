class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
    @user = User.find(params[:user_id])
  end

  def create
    @message = Message.new(message_params)
    @message.receiver_id = current_user.id
    @message.sender_id = params[:user_id]
    if @message.save
      redirect_to user_path(current_user.id)
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  def show
     @message = Message.find(params[:id])
  end


  private

    def message_params
      params.require(:message).permit(:body, :sender_id, :receiver_id)
    end

end
