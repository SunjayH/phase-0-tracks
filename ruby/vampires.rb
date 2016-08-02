puts "What is your name?"
name = gets
name = name.chomp
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
birth_year = gets.to_i
puts "We're getting pizza for lunch, and our cafeteria serves garlic bread. Should we order some for you?"
garlic = gets
garlic = garlic.chomp
if garlic.include? "Yes"
	garlicBool = true
elsif garlic.include? "Sure"
		garlicBool = true
else
	garlicBool = false
end
puts "Would you like to enroll in the company's health insurance?"
insurance = gets
insurance = insurance.chomp
if insurance.include? "Yes"
	insuranceBool = true
elsif insurance.include? "Sure"
	insuranceBool = true
else
	insuranceBool = false
end

#This is where we start testing

#Checking the birth year
thisYear = Time.now.year
lastYear = thisYear - 1
if age == thisYear - birth_year || age == lastYear - birth_year
	 vampireChance = "probablyNot"
else
	vampireChance = "probably"
end

#Checking garlic and insurance if the birth year is off
if vampireChance == "probably" && garlicBool == false && insuranceBool == true
	vampireChance = "certainly"
elsif vampireChance == "probably" && (garlicBool == false || insuranceBool == true)
else
	vampireChance == "inconclusive"
end
		
#Checking names
if name.include? "Tu Fang"
	vampireChance = "certainly"
elsif name.include? "Drake Cula"
	vampireChance = "certainly"
else
end