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

puts "The hamster's name is #{name}."
puts "The hamster's volume is #{volume}."
puts "The hamster is #{color}."
if adoption == true
	puts "The hamster is a good candidate for adoption."
else
	puts "The hamster is not a good candidate for adoption."
end
if age != nil
	puts "The hamster is #{age} years old."
else
end
