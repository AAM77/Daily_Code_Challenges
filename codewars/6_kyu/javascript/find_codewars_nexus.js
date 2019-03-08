// # Name: Find the Nexus of the Codewars Universe
// # Source: CodeWars
// # Difficulty: 6 kyu
// #
// # URL: https://www.codewars.com/kata/find-the-nexus-of-the-codewars-universe/train/ruby
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
// # Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were the same number. I cried a little.
// #
// # Complete the method that takes a hash/object/directory/association list of users, and find the nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user. For each user, the key is the rank and the value is the honor.
// #
// # If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.
// #
// # Example
// #          rank    honor
// # users = {  1  =>  93,
// #           10  =>  55,
// #           15  =>  30,
// #           20  =>  19,    <--- nexus
// #           23  =>  11,
// #           30  =>   2 }
//
//
// #################
// #  PseudoCode:  #
// #################
//
// # Iterate through the hash
//   # compare the integer value of each key to its value (get difference)
//   # set this as the difference
//   # for now, set this as the key
//
//   # continue to the next key:value pair in the hash
//   # get the difference
//   # if the new difference is less than the old difference
//         # set this as the new benchmark
//         # and set this key as the nexus
//
//   # Once finished iterating through:
//   # return whatever value the nexus is equal to
//
//
// ####################
// # RUBY SOLUTIONS #
// ####################
//
// #*******************#
// # Adeel's Attempt 1 #
// #*******************#

function nexus(users) {
  const keys = Object.keys(users);
  const values = Object.values(users);
  let nexus = parseInt(keys[0]);
  let difference = Math.abs(parseInt(keys[0]) - values[0]);

  for(let i=0; i<keys.length; i++) {
    let new_dif = Math.abs(parseInt(keys[i]) - values[i])

    if (new_dif < difference) {
      difference = new_dif
      nexus = parseInt(keys[i])
    }
  }
  return nexus
}
