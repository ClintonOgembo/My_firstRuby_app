[ "Action", "Comedy", "Drama", "Horror", "Romance" ].each do |genre_name|
    MovieGenre.find_or_create_by!(name: genre_name)
end
