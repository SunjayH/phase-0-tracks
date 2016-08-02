puts "Hamster's name?"
name = gets.chomp
puts "How loud is it (1-10)?"
volume = gets.to_i
puts "What color is its fur?"
color = gets.chomp
puts "Is it a good candidate for adoption?"
adoption = gets.chomp
if adoption.include? "Yes"
	adoption = true
elsif adoption.include? "Sure"
	adoption = true
else
	adoption = false
end
puts "Estimated age?"
age = gets.chomp
if age == ""
	age = nil
else
	age = age.to_i
end
