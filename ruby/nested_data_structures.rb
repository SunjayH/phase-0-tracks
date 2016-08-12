seattle_pokemon = {
	drowzee: {
		name: "Drowzee",
		type: ["Psychic"],
		evolves_into: :hypno,
		favorite_places: "Inland, in urban areas with lots of bars"
	},
	clefairy: {
		name: "Clefairy",
		type: ["Normal"],
		evolves_into: :clefable,
		favorite_places: "Inland, especially Capitol Hill"
	},
	zubat: {
		name: "Zubat",
		type: ["Flying", "Poison"],
		evolves_into: :golbat,
		favorite_places: "Everywhere"
	},
	:magikarp => {
		name: "Magikarp",
		type: ["Water"],
		evolves_into: :gyarados,
		favorite_places: "Near lakes, such as Lake Union"
	},
	golbat: {
		name: "Golbat",
		type: ["Flying", "Poison"],
		evolves_into: :crobat,
		favorite_places: "Everywhere but not as often"
	}
}

puts seattle_pokemon

puts "Magikarp is a #{seattle_pokemon[:magikarp][:type]} Pokemon."

seattle_pokemon[:clefairy][:type].push("Fairy")
seattle_pokemon[:zubat][:favorite_places] = seattle_pokemon[:zubat][:favorite_places].concat(" but not when it's sunny")
seattle_pokemon[:golbat][:evolves_from] = :zubat
puts seattle_pokemon