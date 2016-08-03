puts "How many employees are being interviewed?"
employees = gets.to_i
count = 1
while count <= employees
	#Get it? COUNT? Vampires? HAHAHAHA
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

	#Check for sun allergy
	allergyList = nil
	while allergyList != "Done" && allergyList != "done"
		puts "Please list your allergies. When you have listed them all, enter done."
		allergyList = gets.chomp
		if allergyList == "sunshine"
			vampireTrump = true
		else
		end
	end

	#This is where we start testing

	#Checking the birth year
	thisYear = Time.now.year
	lastYear = thisYear - 1
	if age == thisYear - birth_year || age == lastYear - birth_year
		 vampireChance = "inconclusive"
	else
		vampireChance = "likely"
	end

	#Checking garlic and insurance if the birth year is off
	#Got year right, checking for garlic and insurance
	if vampireChance == "inconclusive"  && (garlicBool == true || insuranceBool == true)
		vampireChance = "probablyNot"	
	#Age wrong but everything else checks out, who knows?
	elsif vampireChance == "likely" && garlicBool == true && insuranceBool == true
		vampireChance = "inconclusive"
	#Age wrong and doesn't want garlic bread or insurance makes us more certain
	elsif vampireChance == "likely" && garlicBool == false && insuranceBool == false
		vampireChance = "certainly"
	else
	#Results from first test stay put - either they're still probably a vampire or we can't tell
	end
			
	#Checking names
	if name.include? "Tu Fang"
		vampireChance = "certainly"
	elsif name.include? "Drake Cula"
		vampireChance = "certainly"
	else
	end

	#Printing conclusion
	if vampireChance == "certainly" #This is first because being allergic to sunlight means they're even more certainly a vampire.
		puts "Almost certainly a vampire."
	elsif vampireChance == "likely" || vampireTrump == true
		puts "Probably a vampire"
	elsif vampireChance == "probablyNot"
		puts "Probably not a vampire"
	elsif vampireChance == "inconclusive"
		puts "Results inconclusive"
	else
	end 
	count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."