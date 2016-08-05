#encrypt go through each character and 
#shift it to the next character in the alphabet
#doesn't increase the index for spaces


def encrypt(string)
	index = 0
	while index < string.length
		if string[index] == "z"
			string[index] = "a"
		elsif string[index] != " "
			string[index] = string[index].next
		end
		index += 1
	end
	p string
end


def decrypt (string)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < string.length		
		if string[index] != " "
			ab_position = alphabet.index(string[index])
			string[index] = alphabet[ab_position - 1]
		end
		index += 1
	end
	p string
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")
#decrypt(encrypt("swordfish"))

#Ask user whether they want to encrypt or decrypt
#We will ask for the password
#Based on the user answer, we will either encrypt or decrypt the input

puts "Would you like to decrypt or encrypt a password?"
answer = gets.chomp.downcase
puts "What is the password?"
password = gets.chomp
	if answer == "encrypt"
		encrypt(password)
	elsif answer == "decrypt"
		decrypt(password)
	else
		puts "Sorry, I don't understand the input"
	end