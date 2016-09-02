require 'sqlite3'
require 'faker'

#This is to link databases in to make them easy to manipulate in ruby

$fridge = SQLite3::Database.new("fridge.db")
$fridge.results_as_hash = true

$food_type = SQLite3::Database.new("food_type.db")
$food_type.results_as_hash = true

#Will have a database that is the fridge
#In the fridge are foods with calories
#If there's not enough calories to make a meal (ca. 1000)
#Tells you to go shopping
#Two tables - one with types of food, one with what food is in fridge
#Types of food will estimate calories

create_fridge = <<-SQL
	CREATE TABLE IF NOT EXISTS fridge(
		id INTEGER PRIMARY KEY,
		food_type INT,
		quantity INT,
		FOREIGN KEY(food_type) REFERENCES food_type(id)
	)
	SQL
create_food_list = <<-SQL
	CREATE TABLE IF NOT EXISTS food_type(
		id INTEGER PRIMARY KEY,
		standard_measure VARCHAR(50),
		is_vegetable BOOLEAN,
		est_cal INT
	)
	SQL

$fridge.execute(create_fridge)
$food_type.execute(create_food_list)

#Will have four different methods:
#Shop will allow items to be put in fridge database
#New item will allow new types of food to be put in food type database
#Eat will take items out of fridge database
#
