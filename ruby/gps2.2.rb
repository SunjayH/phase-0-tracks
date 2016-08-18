# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a new hash
  # Use split to seperate words into seperate strings and place them in an array
  # Take that array of strings and make it into a hash with the default quantity
  # set default quantity (1)
  # print the list to the console [Use .each method] 
# output: [hash goes here]

def groceries(list)
	grocery_list = {}
	split_list = list.split(" ")
	split_list.length.times do |i| 
			item = split_list[i].to_sym
			grocery_list[item] = 1
	end
	grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: Method call needs to include quantity, have quantity set to 1
		# Convert string to a symbol 
		# Assign quantity to the item, Use hash_name[:symbol] = quantity
# output: Print hash with input added to it

def add_item(grocery_list, new_item, quantity = 1)
	new_item = new_item.to_sym
	quantity = quantity.to_i
	grocery_list[new_item] = quantity
	grocery_list
end

# Method to remove an item from the list
# input: which item will be dropped from the list
# steps: delete function
# output: hash with selected item removed

def delete_item(grocery_list,deleted_item)
	deleted_item = deleted_item.to_sym
	grocery_list.delete(deleted_item)
	grocery_list
end


# Method to update the quantity of an item
# input: item and quantity
# steps: Assign the new quantity to the item in our hash
		# Use hash_name[:symbol] = quantity
# output: The hash with modified quantity

def update_quantity(grocery_list,item, new_quantity)
	item = item.to_sym
	new_quantity = new_quantity.to_i
	grocery_list[item] = new_quantity
	grocery_list
end

# Method to print a list and make it look pretty
# input: The hash itself
# steps: Iterate through every key in our hash and place it in a string along
		# with it's value
		# h.each {|key, value| puts "I need #{value} of #{key}."
# output: Full list of each item and quantity

def print_list(list)
	list.each {|key, value| puts "I need #{value} #{key}."}
	list
end

#Test
myList = groceries("carrots apples cereal pizza")
myList = add_item(myList,"lemonade", 2)
myList = add_item(myList,"tomatoes", 3)
myList = add_item(myList, "onions", 1)
myList = add_item(myList, "ice cream", 4)
myList = delete_item(myList, "lemonade")
myList = update_quantity(myList,"ice cream", 1)
print_list(myList)

#What did you learn about pseudocode from working on this challenge?
	#Sometimes I have to work backward to get to pseudocode and explain things
#What are the tradeoffs of using arrays and hashes for this challenge?
	#Arrays wouldn't store quanitity very easily
#What does a method return?
	#The last line
#What kind of things can you pass into methods as arguments?
	#Pretty much anything
#How can you pass information between methods?
	#There are lots of ways. My strategy did it all manually though
#What concepts were solidified in this challenge, and what concepts are still confusing?
	#This helped with understanding arguments and methods
	#I couldn't figure out how to use the .method functionality to pass information, so I eventually gave up and did it this way.