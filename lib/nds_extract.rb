$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  
  result = {
  }
  
  row_index = 0 
  while row_index < nds.count do
    
    name = nds[row_index][:name]
    movie_totals = 0
    
    inner_length = nds[row_index][:movies].length
    inner_index = 0
    while inner_index < inner_length do
      
      movie_totals += nds[row_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1
      
    end
    
    result[name] = movie_totals
    row_index += 1
  end
  
 pp result
end
