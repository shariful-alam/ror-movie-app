class User < ApplicationRecord
  has_many :movies

  validates :username, presence: true, format: {with: /\A[a-zA-Z0-9_]+\z/ }
end
