//Input is a string
//We make an empty string
//For each character in the string, starting at the end
//we add the character to the empty string

function reverse(str){
	var reverseStr = '';
	for (i = str.length-1; i >= 0; i--){
		reverseStr += str[i];
	}
	return reverseStr;
}

var reversedProblem = reverse("Problem");
if (reversedProblem[0] == 'm'){
	console.log(reversedProblem);
}
