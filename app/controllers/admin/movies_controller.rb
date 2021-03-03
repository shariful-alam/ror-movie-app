class Admin::MoviesController < ApplicationController

  before_action :authenticate_admin_user!
  before_action :set_movie, except: [:index]

  def index
    @movies = Movie.all.order(created_at: :desc)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to admin_movies_path, notice: 'Movie has been created successfully.'
    else
      render :new
    end
  end

  def show

  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    if @movie.update(movie_params)
      redirect_to admin_movies_path, notice: 'Movie has been updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    if @movie && @movie.destroy
      redirect_to admin_movies_path, notice: 'Movie has been deleted.'
    else
      render :index
    end
  end

  private

  def set_movie
    @movie = params[:id].present? ? Movie.find(params[:id]) : Movie.new
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :director, :main_star, :description, :genres => [])
  end
end
