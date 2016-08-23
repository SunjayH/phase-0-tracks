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