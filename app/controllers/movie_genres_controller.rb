class MovieGenresController < ApplicationController

  MY_CONSTANT = MovieGenresController
  
  def index
    render json: MovieGenre.all
  end
end