function madLib(verb, adjective, noun) {
  var sentence = `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
  return sentence
}

// console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
  // return searchString.includes(subString);
  let words = searchString.split(" ");
  let bool
 for (let i = 0; i < words.length; i++) {
   if (words[0] === subString) {
     bool = true;
     break
   }
 }
 return bool = bool || false;
}

// console.log(isSubstring("time to program", "time"));

// console.log(isSubstring("Jump for joy", "joys"))

function fizzBuzz(array) {
  let result = []
  array.forEach(integer => {
    if ((integer % 3 == 0 && integer % 5 != 0) || (integer % 3 != 0 && integer % 5 == 0)) {
      result.push(integer);
    }
  })
  return result
}

// console.log(fizzBuzz([2, 3, 5,6, 10, 15, 18]))

function isPrime(number) {
  for (let i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// console.log(isPrime(2) === true)
// console.log(isPrime(10) === false)
// console.log(isPrime(15485863) === true)
// console.log(isPrime(3548563) === false)

function sumOfNPrimes(n) {
  function firstNPrimes(n) {
    let primes = [];
    let i = 2;
    while (primes.length < n) {
      if (isPrime(i)) {
        primes.push(i);
      }
      i++;
    }
    return primes;
  }
  let n_primes = firstNPrimes(n);
  return n_primes.reduce((accum, el) => accum + el, 0)
}

console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))
console.log(sumOfNPrimes(2))



