class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.create(review_params)

    redirect_to Movie.find(params[:review][:movie_id])
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
  
  private
  def review_params
    params.require(:review).permit(:movie_id, :stars, :content)
  end
end
