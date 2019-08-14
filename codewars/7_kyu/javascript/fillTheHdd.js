// https://www.codewars.com/kata/5d49c93d089c6e000ff8428c/train/javascript

// PSEUDOCODE
// initialize a sum variable with a value of 0
// initialize a counter variable with a value of 0
// iterate through sizes array
//   add to the sum
//   if sum is less than hd
//     increase the count
//   end
// return count


function save(sizes, hd) {

  let occupiedSpace = 0;
  let numberOfStoredFiles = 0;

  sizes.forEach( (fileSize) => {
    occupiedSpace += fileSize;
    if (occupiedSpace <= hd) {
      numberOfStoredFiles += 1;
    }
  });

  return numberOfStoredFiles;
}
