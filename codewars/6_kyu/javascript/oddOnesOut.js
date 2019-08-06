// https://www.codewars.com/kata/odd-ones-out/train/javascript

function oddOnesOut(nums) {
  let numCounts = {};
  const evenNums = [];

  nums.forEach( num => {
    if (!numCounts[num]) {
      numCounts[num] = 1;
    } else {
      numCounts[num] += 1;
    }
  });

  nums.forEach( num => {
    if (numCounts[num] % 2 == 0) {
      evenNums.push(num)
    }
  });

  return evenNums;
}
