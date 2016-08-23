var colors = ["Watermelon", "Sky blue", "Forest green", "Hot pink"];
var horses = ["Ed", "Phil", "Yasmina", "Rachel"];

colors.push("Orange");
horses.push("Emmett");

var colorHorses = {};

for (var i = horses.length - 1; i >= 0; i--) {
	colorHorses[horses[i]] = colors[i];
}

//console.log(colorHorses);

function Car(brand,model,color){
	this.brand = brand;
	this.model = model;
	this.color = color;

	this.start = function() {console.log("The engine is running!");};	
}

var newCar = new Car("Toyota", "Prius", "Cobalt");
newCar.start();
console.log(newCar);