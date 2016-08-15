class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num)
  	puts "Woof " * num
  	num
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(age)
  	age = age*7
  	puts "Puppy is #{age} years old in dog years."
  	age
  end

  def whos_a_good_boy
  	puts "Woof"
  	#Puppy is a good boy
  end

  def initialize
  	puts "Initializing new puppy instance"
  end
end

#fido = Puppy.new
#fido.fetch("ball")
#fido.speak(4)
#fido.roll_over
#fido.dog_years(3)
#fido.whos_a_good_boy

class Kitten
	def initialize(color)
		puts "Look at the adorable #{color} kitten!"
	end

	def fetch(toy)
		puts "The #{toy} is still over there. Kittens don't fetch."
	end

	def num_lives(num)
		puts "No, cats have 9 lives."
	end

	def feed
		puts "The kitten wants more food still."
	end

end

kitten_array = []

50.times do |i|
	kitten_array[i] = Kitten.new("black")
end

kitten_array.each do |kitten|
	kitten.fetch("ball")
	kitten.num_lives(1)
	kitten.feed
end