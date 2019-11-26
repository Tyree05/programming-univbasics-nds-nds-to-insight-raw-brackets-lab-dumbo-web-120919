$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  require 'pp'
  pp directors_database
  row_index = 0
  directors_total = []
  while row_index < nds.length do
    total = 0
    column_index = 0
    while column_index < nds[row_index][:movies].length do
      total = nds[row_index][:movies][column_index][:worldwide_gross] + total
      column_index += 1
    end
    directors_total << total
    row_index += 1
  end
# pp directors_total


  # directors_database[row_index][:movies][column_index][:worldwide_gross]
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
    "Stephen Spielberg" => directors_total[0],
    "Russo Brothers" => directors_total[1],
    "James Cameron" => directors_total[2],
    "Spike Lee" => directors_total[3],
    "Wachowski Siblings" => directors_total[4],
    "Robert Zemeckis" => directors_total[5],
    "Quentin Tarantino" => directors_total[6],
    "Martin Scorsese" => directors_total[7],
    "Francis Ford Coppola" => directors_total[8]
  }
  return result
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
end
