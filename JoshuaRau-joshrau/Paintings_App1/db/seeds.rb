# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Adding new paintings"

Painting.delete_all

Painting.create [
  {
    painting_title: "the scream",
    museum: "the Gug",
    artist: "Edvard Munch",
    url: "http://www.popspotsnyc.com/The_Scream/the_scream_1910.jpg"
  },
   {
    painting_title: "Starry Night",
    museum: "The Met",
    artist: "Van Gogh",
    url: "http://roman-shymko.com/wp-content/uploads/2012/05/starry-night-original.jpg"
  },
   {
    painting_title: "Convergence",
    museum: "The conservatory",
    artist: "Jackson Pollock",
    url: "http://www.jackson-pollock.org/images/paintings/convergence.jpg"
  }]