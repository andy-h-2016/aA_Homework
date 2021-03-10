function times(num, fun) {
  for (let i = 0; i < num; i++) {
    fun(); // call is made "function-style"
  }
}

const cat = {
  age: 5,

  ageOneYear: function() {
    this.age += 1;
    console.log(this.age)

  }
};

cat.ageOneYear(); // works

// // times(10, cat.ageOneYear.bind(cat)); // ReferenceError; this.age is not defined
// times(10, function() {
//   cat.ageOneYear()
// }); // ReferenceError; this.age is not defined

times(10, cat.ageOneYear());