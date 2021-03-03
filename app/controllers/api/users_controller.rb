class Api::UsersController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    user = User.find_by_username(params[:username])
    if user
      render json: {status: 409, message: 'User already exists.'}
    else
      User.create(username: params[:username])
      render json: {status: 201, message: 'New user has been created.'}
    end
  end

  def favorite_movies
    user = User.find_by_username(params[:username])
    @favorite_movies = user.movies
  end
end
