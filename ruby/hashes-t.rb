client_pref = {:name=>"Jim", :age=>32, :children=>1, :decor=>"Chic", :pets=>false}

#Ask for change
#Figure out which key is wanted
#Figure out what the new value will be
#Convert to the right value
#Print new array

#Used for bool conversion
yes_values = ["y", "Y", "true"]

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
	change_key.to_sym
	client_pref[change_key] = new_value	
end
puts client_pref
