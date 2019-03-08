// # Name: Who Likes It
// # Source: CodeWars
// # Difficulty: 6 kyu
// #
// # URL: https://www.codewars.com/kata/who-likes-it/train/ruby
// #
// #
// # Attempted by:
// # 1. Adeel - 03/06/2019
// #
// #
// ##################
// #                #
// #  Instructions  #
// #                #
// ##################
// #
// #
// # You probably know the "like" system from Facebook and other pages. People can
// # "like" blog posts, pictures or other items. We want to create the text that
// # should be displayed next to such an item.
// #
// # Implement a function likes :: [String] -> String, which must take in input
// # array, containing the names of people who like an item. It must return the
// # display text as shown in the examples:
// #
// # likes [] // must be "no one likes this"
// # likes ["Peter"] // must be "Peter likes this"
// # likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
// # likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
// # likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
// # For 4 or more names, the number in and 2 others simply increases.
//
//
// #################
// #  PseudoCode:  #
// #################
//
// # Five scenarios:
//     # (1) Empty => no one likes this
//     # (2) One => 1 likes this
//     # (3) Two => 0 & 1 like this
//     # (4) Three => 0, 1 & 2 like this
//     # (5) Four => 0, 1, & # others like this
//
//     # if empty:
//       # return 'no one likes this'
//     # elsif length == 1:
//       # return 'name1 likes this'
//     # elsif length == 2:
//       # return 'name1 and name2 like this'
//     # elsif length == 3:
//       # return 'name1, name2, and name3 like this'
//     # else:
//       # return 'name1, name2, & remaining #  others like this'
//     # end
//
//
// ####################
// # RUBY SOLUTIONS #
// ####################
//
// #*******************#
// # Adeel’s Attempt 1 #
// #*******************#
// # This is the attempt I made during the interview session


function likes(names) {

  switch(names.length) {
  case 0: return 'no one likes this'
    break;
  case 1: return `${names[0]} likes this`
    break;
  case 2: return `${names[0]} and ${names[1]} like this`
    break;
  case 3: return `${names[0]}, ${names[1]} and ${names[2]} like this`
    break;
  default: return `${names[0]}, ${names[1]} and ${names.length - 2} others like this`
    break;
  }
}
