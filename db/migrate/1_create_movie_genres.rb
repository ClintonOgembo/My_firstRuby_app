class CreateMovieGenres < ActiveRecord::Migration[8.0]
  def change
    create_table :movie_genres do |t|
      t.timestamps
    end
  end
end
