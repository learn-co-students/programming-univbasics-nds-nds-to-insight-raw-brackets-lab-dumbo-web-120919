$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
pp directors_database

def directors_totals(nds)
  director = 0
  totals = {}

  while director < nds.length do
    d_name = nds[director][:name]
    totals[d_name] = 0
    movie_index = 0

    while movie_index < nds[director][:movies].length do
      totals[d_name] += nds[director][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director += 1
  end

  totals

# that you know what you're starting with!

  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

end
