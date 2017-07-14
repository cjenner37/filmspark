class CreatorsController < ApplicationController
  def index
  		@movies = Movie.all
  		@creators = []
  		@movies.each do |movie|
  			if !movie.creator.nil?
  				if !@creators.include? movie.creator
	  				@creators << movie.creator
	  			end
  			end
  		end
  end

  def show
  end
end
