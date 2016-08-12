#Cannibalized from last week
def shift_values(string)
	index = 0
	#Lists for nexting
	vowels_list = "AEIOUaeiou"
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

puts shift_values("Zubat")