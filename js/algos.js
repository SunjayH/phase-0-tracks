// Take an array with strings in it
// Set the longest string default to the first string
// Go through each string in the array;
// if a string longer than the current longest string it replaces it
// 	then output the final longest string value


function longestWord(wordArray){
	longest = wordArray[0];
	for (var i = 0; i < wordArray.length; i++) {
		if (longest.length <= wordArray[i].length){
			longest = wordArray[i];
		}
		else {	}
	}
	return longest;
}

console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
console.log(longestWord(["shorter string","short","super long string"]));
console.log(longestWord(["oontz oontz oontz","dowop dowop","bing"]));

//Take as input two objects
// Set the default match boolean to false
//For each pair in the first object, check each of the pairs in the second
// If there's a match, toggle the match boolean to true
// If that doesn't happen, the match boolean will stay false
// Which is what we want

function matchObjects(obj1,obj2){
	var matchBool = false;
	for (key1 in obj1){
		for (key2 in obj2){
			if (obj1[key1] == obj2[key2]){
				matchBool = true;
			}
		}
	}
	return matchBool;
}

console.log(matchObjects({name: "Steven", age: 52},{name: "Tamir", age: 54}));
console.log(matchObjects({name: "Steven", age: 54},{name: "Tamir", age: 54}));