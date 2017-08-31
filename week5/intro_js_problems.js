function madLib(verb, adj, noun) {
  let a = verb.toUpperCase();
  let b = adj.toUpperCase();
  let c = noun.toUpperCase();
  let str = `We shall ${a} the ${b} ${c}`;
  return str;
}

// console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
  return searchString.includes(subString) ? true : false;
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
  let arr = [];

  for (let i = 0; i < array.length; i++) {
    let num = array[i];

    if (num % 3 === 0 && num % 5 !== 0) {
      arr.push(num);

    } else if (num % 3 !== 0 && num % 5 === 0) {
      arr.push(num);

    } else {
      continue;
    }
  }

  return arr;
}

// console.log(fizzBuzz([3, 5, 12, 15, 18, 21, 25]));

function isPrime(number) {
  if (number < 2) {
    return false;
  }

  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

function sumOfNPrimes(n) {
  let sum = 0;
  let count = 0;

  for (let i = 0; count < n; i++) {
    if (isPrime(i)) {
      sum += i;
      count += 1;
    }
  }

  return sum;
}

// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));

function titleize(array, cb) {
  let titleized = array.map(name => {
    return `Mx. ${name} Jingleheimer Schmidt`;
  });

  return cb(titleized);
}

let printCallback = (x) => console.log(x);

// titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = [];
}


Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  let idx = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[idx]}`);
};

Elephant.prototype.paradeHelper = function() {
  console.log(`${this.name} is trotting by!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];
