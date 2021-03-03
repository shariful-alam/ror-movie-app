class CreateUsersFavoriteMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :users_favorite_movies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
