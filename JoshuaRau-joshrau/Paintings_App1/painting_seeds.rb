puts "Adding new paintings"

Painting.delete_all

Painting.create [
  {
    painting_title: "the scream",
    museum: "the Gug",
    artist: "Edvard Munch"
    url: "http://www.popspotsnyc.com/The_Scream/the_scream_1910.jpg"
  },
   {
    painting_title: "Starry Night",
    museum: "The Met",
    artist: "Van Gogh"
    url: "http://roman-shymko.com/wp-content/uploads/2012/05/starry-night-original.jpg"
  },
   {
    painting_title: "Convergence",
    museum: "The conservatory",
    artist: 1964
    url: "http://www.jackson-pollock.org/images/paintings/convergence.jpg"
  }]