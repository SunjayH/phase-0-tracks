require 'sqlite3'
require 'faker'

#This is to link databases in to make them easy to manipulate in ruby

$fridge = SQLite3::Database.new("fridge.db")
$fridge.results_as_hash = true

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
	);
	SQL
create_food_list = <<-SQL
	CREATE TABLE IF NOT EXISTS food_type(
		id INTEGER PRIMARY KEY,
		food_name VARCHAR(255),
		standard_measure VARCHAR(50),
		is_vegetable BOOLEAN,
		est_cal INT
	);
	SQL

staples = <<-SQL
	INSERT INTO food_type (food_name, standard_measure, is_vegetable, est_cal)
	SELECT ("egg", "large egg(s)", "false", 78),
	("multigrain bread", "slice(s)", "false", 109),
	("soy milk", "cup(s)", "false", 131) WHERE NOT EXISTS (SELECT * FROM food_type);
SQL

$fridge.execute(create_fridge)
$fridge.execute(create_food_list)
if $fridge.execute
	$fridge.execute(staples)
end

p $fridge.execute("SELECT * FROM fridge") do |row|
    p row
    end

#Will have four different methods:
#Shop will allow items to be put in fridge database
#New item will allow new types of food to be put in food type database
#Suggest meal will give list of things in fridge and tell whether to go shopping
#Eat will take items out of fridge database 
