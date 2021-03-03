class Movie < ApplicationRecord
  has_many :users_favorite_movies, dependent: :destroy
  has_many :users, through: :users_favorite_movies

  validates :name, :genres, :favorited, presence: true
  validates :year, presence: true, numericality: { only_integer: true }


  MOVIE_GENRES = [
    "Action",
    "Adventure",
    "Animation",
    "Biography",
    "Comedy",
    "Crime",
    "Documentary",
    "Drama",
    "Fantasy",
    "History",
    "Horror",
    "Musical",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Thriller",
    "War",
    "Western"
  ]
end
