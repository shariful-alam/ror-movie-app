class ChangeGenresTypeInMovie < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genres, :integer
    remove_column :movies, :user_id, :belongs_to
    add_column :movies, :genres, :string, array: true, null: false
    add_column :movies, :user_id, :integer
  end
end
