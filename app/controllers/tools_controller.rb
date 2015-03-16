class ToolsController < ApplicationController

   def index
    @tools = Tool.all
  end

  def user_tools
    @tools = Tool.all.where(:user_id => current_user.id)
  end


  def new
    @tool = Tool.new
  end

  def show
     @tool = Tool.find(params[:id])
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user_id = current_user.id
    if @tool.save
      redirect_to user_tools_path(current_user.id)
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  def search
  end


  private

    def tool_params
      params.require(:tool).permit(:kind, :name, :description, :condition, :user_id, :image)
    end

end
