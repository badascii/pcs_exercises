var fizzBuzz = function() {
  for (var i = 0; i < 100; i++) {
    if (i % 15 === 0) {
      console.log("FizzBuzz");
    } else if (i % 3 === 0) {
      console.log("Fizz");
    } else if (i % 5 === 0) {
      console.log("Buzz");
    } else {
      console.log(i);
    }
  }
}

fizzBuzz();

// var dude = [1,2,3,4,5,6]

// for (number in dude) {
//   number.yourMOM()
// }