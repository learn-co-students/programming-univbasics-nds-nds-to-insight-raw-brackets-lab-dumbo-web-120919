require "pry"

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 director_index = 0 
 totals = {} 
 while director_index < nds.length do 
  directors_name = nds[director_index][:name]
  totals[directors_name] = 0
  
  movies = 0 
  while movies < nds[director_index][:movies].length do 
    totals[directors_name] += nds[director_index][:movies][movies][:worldwide_gross] 
    movies += 1 
  end 
  director_index += 1 
end
return totals
end

