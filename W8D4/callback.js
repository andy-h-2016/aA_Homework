// function delay() {
//   window.setTimeout(() => alert('HAMMERTIME')), 5000);
// }

// function hammerTime(time) {
//   window.setTimeout( () => alert(`${time} is hammertime!`), time)
// }
const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?', (res) => {
    first = res;
    console.log(`You replied ${res}.`);
    while (!res) {}

    reader.question('Would you like some biscuits?', (res2) => {
      second = res2;
      console.log(`You replied ${res2}.`);
      while (!res2) {}
      
    });
    const firstRes = (first === 'yes') ? 'do' : 'don\'t';
    const secondRes = (second === 'yes') ? 'do' : 'don\'t';
    console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
    reader.close();
  });
}




const readline=require('readline');
const reader=readline.createInterface({input:process.stdin,output:process.stdout});
function teaAndBiscuits() {
  reader.question('Would you like some tea?', function(res) {
    console.log(`You replied ${res}.`);
    reader.question('Would you like some biscuits?',function(res2) {
      console.log(`You replied ${res2}.`);
      const first=(res==='yes')?'do':'don\'t';
      const second=(res2==='yes')?'do':'don\'t';
      console.log(`So you ${first} want tea and you ${second} want biscuits.`);reader.close();
    });
  });
}

teaAndBiscuits()