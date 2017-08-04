class ViewingsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @current_user = current_user
    @viewing = @current_user.viewings.where(movie_id: params[:viewing][:movie_id]).first

    if !@viewing.empty?
      @viewing.watched_count += 1
    else
      @viewing = @current_user.viewings.create(viewing_params)
    end
    respond_to do |format|
      if @viewing.save
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

  def viewing_params
    params.require(:viewing).permit(:movie_id, :recently_watched_at, :liked)
  end
end
