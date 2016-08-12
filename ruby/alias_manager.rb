#Cannibalized from last week
def shift_values(string)
	index = 0
	#Lists for nexting
	vowels_list = "aeiou"
	consonants_list = "bcdfghjklmnpqrstvwxyz"

	#Consonants for sorting
	vowels_array = vowels_list.split('')
	consonants_array = consonants_list.split('')

	#Choose if consonant or vowel, then shift in the list
	while index < string.length		
		#Don't forget to include downcase stuff!
		if consonants_array.any? {|letter| string[index] == letter}
			#Will also put in if for edge case z
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
	puts name




end

new_alias = alias_maker("Felicia Torres")
puts new_alias