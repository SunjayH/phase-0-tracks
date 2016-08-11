#Initialize empty hash
#Ask for inputs for each
#Convert the input type
#Store in the hash as a pair
#I'll deal with the last one later

client_pref = {}

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
if pets_in.includes? "Y" || if pets_in.includes? "Sure"
	pets_in = true
else
	pets_in = false
end
client_pref[:pets] = pets_in

puts client_pref

puts "Would you like to change any of the entries?"
if gets.chomp.includes? "Y"
	puts "Which would you like to change?"
	change_key = gets.chomp.to_sym
	puts "What is the new value?"
	new_value = gets.chomp
	if change_key == "age" || if change_key == "children"
		new_value = new_value.to_i
	elsif change_key == "pets"
		
			
	client_pref[change_key] 
else
end