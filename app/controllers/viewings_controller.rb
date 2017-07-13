class ViewingsController < ApplicationController
  def index
  end

  def new
  end

  def create
    as;ldkfjsa
    current_user.viewings.create(viewing_params)

    redirect_to movies_path
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
