class ChangeGenresTypeInMovie < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genres, :integer
    add_column :movies, :genres, :string, array: true, null: false
  end
end
