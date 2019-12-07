$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  dir_idx = 0
  
  total = {}
  
  while dir_idx < nds.length 
    dir_n = nds[dir_idx][:name]
    movie_idx = 0
    
    total[dir_n] = 0
    
    while movie_idx < nds[dir_idx][:movies].length
      total[dir_n] += nds[dir_idx][:movies][movie_idx][:worldwide_gross]
      movie_idx += 1
    end  
    
    dir_idx += 1
    
  end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  total
end

