class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.new(review_params)

    respond_to do |format|
      if @review.save
        format.js
      end
    end
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
