// PSEUDOCODE
  // Objective:
  // return an array of numbers representing
  // how many letters the respective word has

// STEPS
  // 1 create a JS object with a list of letters and their
  //   position in the alphabet
  // 2 create an empty array of letterCount
  // 3 iterate through the list of words
  // 4 for each word
  // 5 set a count = 0
  // 6  iterate through the word
  // 7  if the word's position matches its alphabet postion,
  //    increase the count
  // 8    once done with the iteration, push into letterCount
  // 9    reset the count
  // 10 return the letterCount array


function solve(arr){



  alphabet = {
    'a':1,
    'b':2,
    'c':3,
    'd':4,
    'e':5,
    'f':6,
    'g':7,
    'h':8,
    'i':9,
    'j':10,
    'k':11,
    'l':12,
    'm':13,
    'n':14,
    'o':15,
    'p':16,
    'q':17,
    'r':18,
    's':19,
    't':20,
    'u':21,
    'v':22,
    'w':23,
    'x':24,
    'y':25,
    'z':26
  }

  const letterCount = [];

  arr.forEach( (word) => {
    let count = 0;
    word.toLowerCase().split('').forEach( (char, i) => {
      if (i+1 === alphabet[char]) {
        count += 1;
      }
    });
    letterCount.push(count);
    count = 0;
  });

  return letterCount;
};
