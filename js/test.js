//console.log("Hello world!");

function isChristmas(){
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	if (mm == 12 && dd == 25){
		console.log("Merry Christmas!");
	}
	else{
		console.log("It is not Christmas.");
	}
}

//isChristmas();

for (var i = 10; i > 0; i--){
	console.log(i);
}