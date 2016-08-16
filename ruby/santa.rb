class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(ethnicity, gender)
		puts "Initializing Santa instance"
		@ethnicity = ethnicity
		@gender = gender
		@age = 0
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
			"Comet", "Cupid", "Donner", "Blitzen"
		]
	end
end

santas = []
example_genders = ["male", "genderqueer", "female", "genderfluid", "agender"]
example_ethnicities = ["black", "white", "hapa", "Khmer", "Jewish"]
10.times do |i|
	santas << Santa.new(example_genders.sample,example_ethnicities.sample)
end
