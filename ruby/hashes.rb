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

