class Santa
	attr_reader :ethnicity, :age, :reindeer_ranking
	attr_accessor :gender

	def initialize(ethnicity, gender)
		puts "Initializing Santa instance"
		@ethnicity = ethnicity
		@gender = gender
		@age = rand(140)
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
			"Comet", "Cupid", "Donner", "Blitzen"
		]
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		puts "Happy birthday Santa!"
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
	end
end

santas = []
example_genders = ["male", "genderqueer", "female", "genderfluid"]
example_ethnicities = ["black", "white", "hapa", "Hmong", "Jewish"]
10000.times do |i|
	santas << Santa.new(example_genders.sample,example_ethnicities.sample)
	puts santas[i].age
	puts santas[i].gender
	puts santas[i].ethnicity
end

#interactive_santa = santas.sample
#puts interactive_santa.age
#puts interactive_santa.gender
#puts interactive_santa.ethnicity
#interactive_santa.celebrate_birthday
#interactive_santa.gender = "agender"
#puts interactive_santa.age
#puts interactive_santa.gender
#puts interactive_santa.reindeer
#interactive_santa.get_mad_at("Vixen")
#puts interactive_santa.reindeer