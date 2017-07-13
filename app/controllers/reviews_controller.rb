class ReviewsController < ApplicationController
  def index
  end

  def new
  end

  def create
    sad;lkf
    current_user.reviews.create(review_params)

    redirect_to movie_show_path
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  
  private
  def review_params
    params.require(:review).permit(:movie_id, :stars, :content)
  end
end
