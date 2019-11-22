$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # pp nds[0][:movies][0][:worldwide_gross].class
  # pp nds.length
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
 
  count = 0 
  while count < nds.length do
    innerCount = 0 
     total = 0
     eachTotal = []
    while innerCount < nds[count][:movies].length do
      total += nds[count][:movies][innerCount][:worldwide_gross]
      # eachTotal << total
      result[nds[count][:name]] = total

      innerCount += 1
      # puts "#{nds[0][:movies][innerCount][:worldwide_gross]} line #{innerCount}"
    end
  
    count += 1
  end
  
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
  pp result
  # pp eachTotal
end

# {:name=>"Spike Lee",
#   :movies=>
#   [{:title=>"Inside Man",
#     :studio=>"Universal",
#     :worldwide_gross=>88513495,
#     :release_year=>2006},
#     {:title=>"BlacKkKlansman",
#     :studio=>"Focus",
#     :worldwide_gross=>49275340,
#     :release_year=>2018},
#     {:title=>"Malcolm X",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>48169910,
#     :release_year=>1992},
#     {:title=>"The Original Kings of Comedy",
#     :studio=>"Paramount",
#     :worldwide_gross=>38182790,
#     :release_year=>2000},
#     {:title=>"Jungle Fever",
#     :studio=>"Universal",
#     :worldwide_gross=>32482682,
#     :release_year=>1991}]},
# {:name=>"Wachowski Siblings",
#   :movies=>
#   [{:title=>"The Matrix Reloaded",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>281576461,
#     :release_year=>2003},
#     {:title=>"The Matrix",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>171479930,
#     :release_year=>1999},
#     {:title=>"The Matrix Revolutions",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>139313948,
#     :release_year=>2003},
#     {:title=>"Jupiter Ascending",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>139313948,
#     :release_year=>2015},
#     {:title=>"Speed Racer",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>47387723,
#     :release_year=>2008},
#     {:title=>"Cloud Atlas",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>27108272,
#     :release_year=>2012}]},
