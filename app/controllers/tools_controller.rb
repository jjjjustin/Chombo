class ToolsController < ApplicationController

  def index
    @tools = Tool.all.where.not(:user_id => current_user.id)
    if params[:search]
      @tools = Tool.search(params[:search]).all.where.not(:user_id => current_user.id)
    else
      @tools = Tool.all.where.not(:user_id => current_user.id)
    end
    @tools = Tool.how_far(@tools, current_user)
  end

  def user_tools
    @tools = Tool.all.where(:user_id => current_user.id)
  end


  def new
    @title
    @tool = Tool.new
  end

  def show
     @tool = Tool.find(params[:id])
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user_id = current_user.id
    respond_to do |format|
      if @tool.save
        format.html { redirect_to profile_tools_path(current_user.id), notice: "You've successfully added a new tool." }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tool = Tool.find(params[:id])
    respond_to do |format|
      if @tool.update(tool_params)
        format.html { redirect_to @tool, notice: 'Tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  def profile_view_tools
    @tools = Tool.all.where(:user_id => params[:id])
  end


  private

    def tool_params
      params.require(:tool).permit(:kind, :name, :description, :condition, :user_id, :image)
    end

end
