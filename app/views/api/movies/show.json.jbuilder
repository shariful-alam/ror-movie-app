json.extract! @movie, :id, :name, :year, :director, :main_star, :description, :favorited, :genres
json.favorited_users_count @favorited_user_count
