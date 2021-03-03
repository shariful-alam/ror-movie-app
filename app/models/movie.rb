class Movie < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, :genres, :is_favorite, presence: true
  validates :year, presence: true, numericality: { only_integer: true }

  enum is_favorite: {unfavorite: 0, favorite: 1}

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
