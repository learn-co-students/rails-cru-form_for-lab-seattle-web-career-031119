# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Michael Jackson", bio: "A Million Dollars")
Artist.create(name: "John Butler", bio: "An American werewolf in Australia")
Artist.create(name: "Halsey", bio: "Jersey girl")

Genre.create(name: 'Pop')
Genre.create(name: 'Folk')
Genre.create(name: 'Metal')

Song.create(name: "Eat It", artist_id: 1, genre_id: 1)
Song.create(name: "Hand of the Almighty", artist_id: 2, genre_id: 2)
Song.create(name: "Sorry", artist_id: 3, genre_id: 1)
