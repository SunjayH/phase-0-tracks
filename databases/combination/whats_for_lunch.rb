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
	INSERT INTO food_type (food_name, standard_measure, is_vegetable, est_cal) VALUES ("egg", "large egg(s)", "false", 78),	("multigrain bread", "slice(s)", "false", 109),	("soy milk", "cup(s)", "false", 131);
SQL

$fridge.execute(create_fridge)
$fridge.execute(create_food_list)
if $fridge.execute("SELECT * FROM food_type").empty?
	$fridge.execute(staples)
	p $fridge.execute("SELECT * FROM food_type")
end


#Will have four different methods:
#New item will allow new types of food to be put in food type database
#Shop will allow items to be put in fridge database
#Suggest meal will give list of things in fridge and tell whether to go shopping
#Eat will take items out of fridge database 

#new_item will ask for each of the pieces of information about the item
#new_item will push that information into the food_type table
#new_item will return the id of the added item

def new_item()
	yes_values = ["Yes", "yes", "Y", "y"]
	puts "What is the new item?"
	food_name = gets.chomp
	puts "Is this item a vegetable?"
	ans = gets.chomp
	if yes_values.any? {|yes| ans.include? yes}
		is_vegetable = true
	else
		is_vegetable = false
	end
	puts "Google calories in #{food_name}."
	puts "What is the unit of measure for this item (eg. slice, cup)?"
	standard_measure = gets.chomp
	puts "How many calories is one #{standard_measure} of this item?"
	est_cal = gets.chomp.to_i

	#Put in database
	#if $fridge.execute("SELECT * FROM food_type WHERE food_name=#{food_name}").empty?
	#It looks like sql doesn't like my query, oops, so we'll just let there be duplicates
	insert_command = <<-SQL
		INSERT INTO food_type (food_name, standard_measure, is_vegetable, est_cal) VALUES ("#{food_name}", "#{standard_measure}", "#{is_vegetable}", #{est_cal})
	SQL
		$fridge.execute(insert_command)
	#else
	#	puts "It looks like this food item is already in the database."
	#	puts $fridge.execute("SELECT * FROM food_type")
	#end
end


# Shop will ask if add item
# If yes, shop will display list of known items and ask if it's on the list
	# If yes, shop will ask which item it is
	# If no, shop will run new item method to add item, then ask which item
	# Shop will ask for quantity of item
#If no, loop breaks
#New items will be put into a database by going through NewItemHash with each

def shop
	yes_values = ["Yes", "yes", "Y", "y"]
	newItemHash = {}
	i = 0
	until i != i do
		puts "Did you buy another item?"
		ans = gets.chomp
		if yes_values.any? {|yes| ans.include? yes}
			puts "Is the item you bought on this list?"
			puts $fridge.execute("SELECT (food_name) FROM food_type")
			ans = gets.chomp
			if yes_values.any? {|yes| ans.include? yes}
				puts "What number is it on the list?"
				food_id = gets.chomp.to_i
			else
				food_id = new_item()
			end
			food_measure = $fridge.execute("Select (standard_measure) FROM food_type WHERE id = #{food_id}")
			puts "How many #{food_measure} did you purchase?"
			food_quantity = gets.chomp.to_i
		else
			break
		end
		newItemHash[food_id] = food_quantity
	end

	#Put bought items into the database
	#Figures out if the item is already in the fridge
	#If it is, increase the quantity
	#If it's not, make a new line
	newItemHash.each do |id,quantity|
		if $fridge.execute("SELECT * FROM fridge WHERE food_type=#{id}").empty?
			$fridge.execute("INSERT INTO fridge (food_type, quantity) VALUES (#{id}, #{quantity})")
		else
			quantity += $fridge.execute("SELECT (quantity) FROM fridge WHERE food_type=#{id}")
			$fridge.execute("UPDATE fridge SET quantity=#{quantity} WHERE food_type=#{id}")
		end
	end	

	#Returns id
	food_id
end

shop()