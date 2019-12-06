$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_index = 0
  totals = {}

  while directors_index < nds.length do
    director_name = nds[directors_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[directors_index][:movies].length do
      totals[director_name] += nds[directors_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    directors_index += 1
  end
  totals
end
