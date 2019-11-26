require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
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
 
 
  
  
  pp(nds)
  directorHash = {}
  directorCounter = 0
  totalCounter = 0
  directorTotal = 0
while directorCounter < directors_database.length do
    movieCounter = 0
while movieCounter < directors_database[directorCounter][:movies].length do
    directorTotal += directors_database[directorCounter][:movies][movieCounter][:worldwide_gross]
    totalCounter += directors_database[directorCounter][:movies][movieCounter][:worldwide_gross]
    movieCounter += 1 
  end
  directorHash[directors_database[directorCounter][:name]] = directorTotal
    directorTotal += directors_database[directorCounter][:movies][movieCounter][:worldwide_gross]
    totalCounter += directors_database[directorCounter][:movies][movieCounter][:worldwide_gross]
    movieCounter += 1 
  end
  directorHash[directors_database[directorCounter]] << directorTotal
  directorTotal = 0
  directorCounter += 1 
end
    directorHash





# MY OWN NOTE! OPEN PREVIOUS LAB AND LOOK AT HOW I ACCESSED THE VALUES USING KEYS INSTEAD OF NUMBERS LIKE IN THE EXAMPLES TO THE LEFT. YOU NEED TO SHOVEL INTO directorHash THE NAME OF THE DIRECTOR AS A KEY AND THE TOTAL THEIR MOVIES MADE AS THE VALUE. THEN ADD IT ALL UP TO A GRAND TOTAL IN THE END. STILL USE THE EXAMPLE TO THE LEFT AS A FOUNDATION FOR YOUR METHOD, THOUGH. IT'S NOT AS COMPLICATED AS YOU THINK IT IS!