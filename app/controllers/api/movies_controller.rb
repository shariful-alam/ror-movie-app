class Api::MoviesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @favorited_user_count = @movie.users_favorite_movies.count
  end

  def set_favorite
    movie = Movie.find(params[:id])
    user = User.find_by_username(params[:username])
    movie.users_favorite_movies.create(user: user)
    movie.favorited += 1
    movie.save
    render json: {status: 200, message: 'Added as favorite movie.'}
  end

end