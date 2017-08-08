class ViewingsController < ApplicationController
  def index
  end
 
  def new
  end

  def create
    @viewing = @current_user.viewings.create(viewing_params)
    @viewing.watched_count = 1

    @viewing.save

    redirect_to movie_path(@viewing.movie_id)
  end

  def edit

  end

  def show
  end

  def update
    @viewing = @current_user.viewings.where(movie_id: params[:viewing][:movie_id]).last

    @viewing.watched_count = @viewing.watched_count + 1
    @viewing.liked = params[:liked]

    respond_to do |format|
      if @viewing.save
        format.js
      end
    end
  end

  def destroy
  end

  def viewing_params
    params.require(:viewing).permit(:movie_id, :recently_watched_at, :liked)
  end
end
