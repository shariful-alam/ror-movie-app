class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: false, limit: 80
      t.integer :genres, array: true, null: false
      t.string  :year, null: false
      t.string  :director, limit: 60
      t.string  :main_star, limit: 60
      t.text    :description, limit: 400
      t.integer :is_favorite, default: 0
      t.belongs_to  :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
