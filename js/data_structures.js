var colors = ["blue", "green", "yellow", "red"];
var horseNames = ["Charlie", "Ed", "Buttercup", "Lucy"]
horseNames.push("Frankie");
colors.push("pink");


var horses = {}
for (var i = 0; i < colors.length; i++) {
  console.log(horses[horseNames[i]] = colors[i]); 
}

console.log(horses)



function car(make, color, fullTank) {
 this.out_of_gas = function(){
    if (this.fullTank) {
      console.log("*vroom vroom*");
    } else {
      console.log("*sputter sputter*");
    }
  }
  this.make = make;
  this.color = color;
  this.fullTank= fullTank;
 
}

var ford = new car("ford", "blue", false)
console.log(ford)
ford.out_of_gas()

var toyota = new car("toyota","red",true)
console.log(toyota)
toyota.out_of_gas()
   