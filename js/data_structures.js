var colors = ["Watermelon", "Sky blue", "Forest green", "Hot pink"];
var horses = ["Ed", "Phil", "Yasmina", "Rachel"];

colors.push("Orange");
horses.push("Emmett");

var colorHorses = {};

for (var i = horses.length - 1; i >= 0; i--) {
	colorHorses[horses[i]] = colors[i];
}

//console.log(colorHorses);

function Car(brand,modelYear,color){
	this.brand = brand;
	this.modelYear = modelYear;
	this.color = color;

	this.start = function() {console.log("The engine is running!");};	
}

var newCar = new Car("Toyota", 2011, "Cobalt");
newCar.start();

var oldCar = new Car("Ford", 1989, "Red");
oldCar.start();

var electricCar = new Car("Tesla", 2015, "Gray");