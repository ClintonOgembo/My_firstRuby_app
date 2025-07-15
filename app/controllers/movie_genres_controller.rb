class MovieGenresController < ApplicationController

  MY_CONSTANT = MovieGenresController

  skip_before_action :verify_authenticity_token
  
  def index
    render json: MovieGenre.all
  end

  def create
    genre = MovieGenre.create!(name: params[:name])
    render json: genre, status: :created
  end

end