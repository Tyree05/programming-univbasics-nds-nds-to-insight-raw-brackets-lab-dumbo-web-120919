$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  require 'pp'
  # pp directors_database
  row_index = 0
  directors_totals = []
  while row_index < directors_database[row_index].length do
    total = 0
    column_index = 0
    while column_index < directors_database[row_index][:movies].length do
      total = directors_database[row_index][:movies][column_index][:worldwide_gross] + total
      column_index += 1
    end
    directors_totals << total
    row_index += 1
  end



  # directors_database[row_index][:movies][column_index][:worldwide_gross]
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
    "Stephen Spielberg" => directors_totals[0],
    "Russo Brothers" => directors_totals[1],
    "James Cameron" => directors_totals[2],
    "Spike Lee" => directors_totals[3],
    "Wachowski Siblings" => directors_totals[4],
    "Robert Zemeckis" => directors_totals[5],
    "Quentin Tarantino" => directors_totals[6],
    "Martin Scorsese" => directors_totals[7],
    "Francis Ford Coppola" => directors_totals[8]
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
