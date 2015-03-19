class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    if @message.save
      redirect_to root_path
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
      params.require(:message).permit(:, :name, :description, :condition, :user_id, :image)
    end

end
