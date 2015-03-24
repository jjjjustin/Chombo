class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @user = User.find(params[:user_id])
  end

  def show
     @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.reviewer_id = current_user.id
    @review.user_id = params[:user_id]
    if @review.save
      redirect_to profile_view_path(@review.user_id)

    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  private

    def review_params
      params.require(:review).permit(:user_id, :reviewer_id, :review, :rating)
    end

end
