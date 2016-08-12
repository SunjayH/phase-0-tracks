#Initialize empty hash
#Ask for inputs for each
#Convert the input type
#Store in the hash as a pair
#I'll deal with the last one later
client_pref = {}
#Used for bool conversion
yes_values = ["y", "Y", "true"]

puts "What's the client's name?"
name_in = gets.chomp
client_pref[:name] = name_in

puts "What's the client's age?"
age_in = gets.to_i
client_pref[:age] = age_in

puts "How many children does the client's have?"
child_in = gets.to_i
client_pref[:children] = child_in

puts "What's decor theme does the client want?"
decor_in = gets.chomp
client_pref[:decor] = decor_in

puts "Does the client have pets?"
pets_in = gets.chomp
if yes_values.any? {|yes| pets_in.include? yes}
		pets_in = true
	else
		pets_in = false
end 
client_pref[:pets] = pets_in

puts client_pref

#Ask for change
#Figure out which key is wanted
#Figure out what the new value will be
#Convert to the right value
#Print new array

puts "Would you like to change any of the entries?"
if yes_values.any? {|yes| gets.chomp.include? yes}
	puts "Which would you like to change?"
	change_key = gets.chomp
	puts "What is the new value?"
	new_value = gets.chomp
	if change_key == "age"
		new_value = new_value.to_i
	elsif change_key == "children"
		new_value = new_value.to_i
	elsif change_key == "pets"
		if yes_values.any? {|yes| new_value.include? yes}
			new_value = true
		else
			new_value = false
		end
	else
	end
	change_key = change_key.to_sym
	client_pref[change_key] = new_value	
end
puts client_pref
