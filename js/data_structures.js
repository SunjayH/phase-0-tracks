var colors = ["Watermelon", "Sky blue", "Forest green", "Hot pink"];
var horses = ["Ed", "Phil", "Yasmina", "Rachel"];

colors.push("Orange");
horses.push("Emmett");

var coloredHorses = {};

for (var i = horses.length - 1; i >= 0; i--) {
	coloredHorses[horses[i]] = colors[i];
}

console.log(coloredHorses);