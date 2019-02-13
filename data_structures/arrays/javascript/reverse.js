///////////////////
//               //
//   CHALLENGE   //
//               //
///////////////////

/*
  An array is a type of data structure that stores elements of the same type in a contiguous block of memory. In an array, , of size , each memory location has some unique index,  (where ), that can be referenced as  (you may also see it written as ).

  Given an array, , of  integers, print each element in reverse order as a single line of space-separated integers.

  Note: If you've already solved our C++ domain's Arrays Introduction challenge, you may want to skip this.

  Input Format

  The first line contains an integer,  (the number of integers in ).
  The second line contains  space-separated integers describing .

  Constraints

  Output Format

  Print all  integers in  in reverse order as a single line of space-separated integers.
*/


// MY SOLUTIONS:

// Pseudocode:
//   make a new, empty, list to place numbers in
//   take the current array and start at the end
//   take each number and keep decreasing until you are at the start gain



// Solution 2:

function reverseArray1(a) {
  const reverse_a = []

  for (let i = a.length - 1; i >= 0; i--) {
    reverse_a.push(a[i])
  }

  return reverse_a
}


// Solution 2:
function reverseArray2(a) {
  const reverse_a = []

  for(let i = 0; i < a.length; i++) {
    reverse_a.unshift(a[i])
  }

  return reverse_a
}
