// # Name: Jenny Youngest Detective
// # Source: CodeWars
// # Difficulty: 7 kyu
// #
// # URL: https://www.codewars.com/kata/jenny-the-youngest-detective/train/ruby
// #
// #
// # Attempted by:
// # 1. Adeel - 02/18/2019
// #
// #
// ##################
// #                #
// #  Instructions  #
// #                #
// ##################
// #
// #
// # Jenny is 9 years old. She is the youngest detective in North America. Jenny is a 3rd grader student, so when a new mission comes up, she gets a code to decipher in a form of a sticker (with numbers) in her math notebook and a comment (a sentence) in her writing notebook. All she needs to do is to figure out one word, from there she already knows what to do. And here comes your role - you can help Jenny find out what the word is!
// #
// # In order to find out what the word is, you should use the sticker (array of 3 numbers) to retrive 3 letters from the comment (string) that create the word.
// #
// # Each of the numbers in the array refers to the position of a letter in the string, in increasing order.
// # Spaces are not places, you need the actual letters. No spaces.
// # The returned word should be all lowercase letters.
// # if you can't find one of the letters using the index numbers, return "No mission today". Jenny would be very sad, but that's life... :(
// # Example: input: [5, 0, 3], "I Love You" output: "ivy" (0 = "i", 3 = "v", 5 = "y")
//
//
// #################
// #  PseudoCode:  #
// #################
//
// # Receive a sentence
//   # lowercase everytihng
//   # I split the sentence into words, with the space (' ') as the delimiter
//   # get the letters from the nums array
//   # join the letters
//   # output the result



// ########################
// # JAVASCRIPT SOLUTIONS #
// ########################

// #**********************#
// # Adeel's Attempt 1 #
// #**********************#

function missingWord(nums, str) {
  const s = str.split(' ').join('').toLowerCase()
  const sorted_nums = nums.sort((a, b) => a - b)
  const max_num = sorted_nums[nums.length - 1]

  if (max_num < s.length) {
    return nums.map( num => { return s[num] } ).join('')
  } else {
    return "No mission today"
  }
}
