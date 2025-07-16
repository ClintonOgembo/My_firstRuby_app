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

  def edit
    genre = MovieGenre.find(params[:id])
    render json: genre
  end

  def update
    genre = MovieGenre.find(params[:id])
    genre.update!(name: params[:name])
    render json: genre
  end

  def delete
    genre = MovieGenre.find(params[:id])
    genre.destroy
    render json: { message: 'genre deleted'}
  end

end