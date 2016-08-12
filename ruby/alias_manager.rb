#Cannibalized from last week
def shift_values(string)
	index = 0
	#Lists for nexting
	vowels_list = "AEIOUaeiou" #I thought about doing an upcase downcase thing but too much work
	consonants_list = "BCDFGHIJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"

	#Consonants for sorting
	vowels_array = vowels_list.split('')
	consonants_array = consonants_list.split('')

	#Edge case stuff
	edge_array = ["z","Z","u","U"]
	edge_replace = ["b", "B", "a", "A"]

	#Choose if consonant or vowel, then shift in the list
	while index < string.length		
		#For edge case z, Z
		if edge_array.any? {|letter| string[index] == letter}
			position = edge_array.index(string[index])
			string[index] = edge_replace[position]		
		elsif consonants_array.any? {|letter| string[index] == letter}
			position = consonants_list.index(string[index])
			string[index] = consonants_list[position+1]
		elsif vowels_array.any? {|letter| string[index] == letter}
			#Will also put in if for edge case u
			position = vowels_list.index(string[index])
			string[index] = vowels_list[position+1]
		else
			#Non-vowel characters will remain the same
		end
		index += 1
	end
	return string
end

#Split into words as array
#Switch words in array
#Return words to string
#Split into letters
#Make string of vowels and consonants
#Use .each to go through and change letters -
#vowels to vowels, consonants to consonants,
#but do nothing to non-letter characters (probably spaces)
#Return words to strings

def alias_maker(name)
	if name.class != String
		puts "Error, name must be a string!"
		return name
	end
	
	#Reverse first and last name

	name_array = name.split(' ')
	name_array.reverse!
	name = name_array.join(' ')
	name = shift_values(name)
end

#Name entry is a while loop yay
#Storage means putting into an hash where the entered name is matched to the real name

alias_hash = {}
name_entry = nil
while name_entry != "quit"
	puts "Enter a name you need to create and alias for:"
	name_entry = gets.chomp
	if name_entry != "quit"
		name_alias = alias_maker(name_entry)
		alias_hash[name_entry] = name_alias
	else	
	end
end

#Printing using each
alias_hash.each {|real_name, fake_name| puts "#{real_name} is also known as #{fake_name}."}