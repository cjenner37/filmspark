class MoviesController < ApplicationController
  def index
  end

  def new
    @movie = Movie.new
  end

  def create
    @user = current_user
    @movie = @user.creations.create(movie_params)

    redirect_to @movie
  end

  def edit
  end

  def show
    @movie = Movie.find(params[:id])
    @creator_id = @movie.user_id
    @viewing = Viewing.new
    @review = Review.new
    # @creator = User.find(@creator_id)
  end

  def update
  end

  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :genre, :location_filmed, :length, :avatar)
  end
end
