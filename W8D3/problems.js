function titleize(names, callback) {
  let schmidtNames = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  schmidtNames.forEach(callback);
}

function printCallback(obj) {
  console.log(obj);
}

// titleize(['Mary','Brian','Leo'],printCallback)

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRR!!!!!`);
}

Elephant.prototype.grow = function () {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick)  {
  this.tricks.push(trick);
}

Elephant.prototype.play = function () {
  let randIndex = Math.round(Math.random() * (this.tricks.length - 1));
  let randTrick = this.tricks[randIndex];
  console.log(`${this.name} is ${randTrick}!`)
}
// el = new Elephant('phanpy', 48, ['swimming with the fishes', 'juggling bananas', 'painting a portrait']);
// console.log(el.name)
// console.log(el.height)
// el.grow();
// console.log(el.height)
// console.log(el.tricks)
// el.addTrick('running in circles')
// console.log(el.tricks)
// el.play()
// el.play()
// el.play()
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by!`)
}

// herd.forEach(Elephant.paradeHelper)

function dinerBreakfast() {
  let order = ['eggs'];

  return function(food) {
    order.push(food);
    console.log(`I'd like ${order.join(' and ')} please.`)
  }
}

let bfastOrder = dinerBreakfast();
bfastOrder('pancakes');
bfastOrder('apples')