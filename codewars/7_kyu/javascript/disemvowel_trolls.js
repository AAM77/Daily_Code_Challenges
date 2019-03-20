// Name: Disemvowel Trolls
// Difficulty: 7 kyu
//
// --- sources ---
// Website: CodeWars
// URL: https://www.codewars.com/kata/disemvowel-trolls/train/javascript


////////////////////
//                //
//  Instructions  //
//                //
////////////////////

// Trolls are attacking your comment section!
//
// A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
//
// Your task is to write a function that takes a string and return a new string with all vowels removed.
//
// For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
//
// Note: for this kata y isn't considered a vowel.

/////////////////
// PSEUDOCODE //
/////////////////
//
// split the string and assign it to a variable
// assign a variable vowels a string of lowercase and uppercase vowels
// iterate through the split string
// if the vowels array includes the letter
    // we set the value to ''

// return a joined('') split_array



///////////////
// SOLUTIONS //
///////////////

//***********//
// Attempt 1 //
//***********//

function disemvowel(str) {

  let split_str = str.split('')
  const vowels = 'aeiouAEIOU'

  for(i=0; i<split_str.length; i++) {
    if (vowels.includes(split_str[i])) {
      split_str[i] = ''
    }
  }

  return split_str.join('')
}
