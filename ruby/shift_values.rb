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

puts shift_values("Torres")