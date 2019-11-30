$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

#pp nds[0][:movies][0][:worldwide_gross]
#pp nds.count 
total = 0 
row_index = 0 

director_counter = 0 
result = {
} 
 
while director_counter < nds.length do 
 director_name = nds[director_counter][:name]
 movie_counter = 0
 result[director_name] = 0 

  while movie_counter < nds[director_counter][:movies].count do 
   result[director_name] += nds[director_counter][:movies][movie_counter][:worldwide_gross]
   movie_counter += 1 
  end 

  director_counter += 1 
end 
  
 result 
end

# nds[0][:movies][0] gives me four keys: title, studio, worldwide gross, and release year 
# nds[0][:movies][0][:worldwide_gross] gives me the gross for that movie
# I need to make a loop that cycles through the movies and adds the worldwide_gross to the total 


# grand_total = 0
# row_index = 0
# while row_index < vm.length do
#   column_index = 0
#   while column_index < vm[row_index].length do
#     inner_len = vm[row_index][column_index].length
#     inner_index = 0
#     while inner_index < inner_len do
#       # Explanation!
#       # vm[row][column][spinner]
#       # spinner is full of Hashes with keys :price and :name
#       grand_total += vm[row_index][column_index][inner_index][:price]
#       inner_index += 1
#     end
#     column_index += 1
#   end
#   row_index += 1
# end
 
# p grand_total #=> 1192
