class User < ApplicationRecord
  has_many :users_favorite_movies, dependent: :destroy
  has_many :movies, through: :users_favorite_movies

  validates :username, presence: true, format: {with: /\A[a-zA-Z0-9_]+\z/ }
end
