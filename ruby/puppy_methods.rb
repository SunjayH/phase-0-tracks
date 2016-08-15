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
end

fido = Puppy.new
fido.fetch("ball")
fido.speak(4)
fido.roll_over
fido.dog_years(3)
fido.whos_a_good_boy