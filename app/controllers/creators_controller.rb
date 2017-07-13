class CreatorsController < ApplicationController
  def index
  		@movies = Movie.all
  		@creators = []
  		@movies.each do |movie|
  			if !movie.creator.nil?
  				@creators << movie.creator
  			end
  		end
  end

  def show
  end
end
