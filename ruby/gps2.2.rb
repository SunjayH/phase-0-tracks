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
myList = add_item(myList,"peanut butter")
myList = delete_item(myList,"pizza")
myList = update_quantity(myList,"carrots", 2)
print_list(myList)