// # Link: https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
//
// ###########
// # PROBLEM #
// ###########
//
// # Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.
// #
// # Your algorithm's runtime complexity must be in the order of O(log n).
// #
// # If the target is not found in the array, return [-1, -1].
// #
// # Example 1:
// #
// # Input: nums = [5,7,7,8,8,10], target = 8
// # Output: [3,4]
// # Example 2:
// #
// # Input: nums = [5,7,7,8,8,10], target = 6
// # Output: [-1,-1]
//
//
// ##################
// # My PseudoCode: #
// ##################
//
// # set up and empty array for indices
// # first check if the target is in the array
// # if it is:
//     # go through the array and check for the number
//     # if the number is target, add its index to the empty indices array
//
// # return an array of the first and last values in the indices array
//
// # else:
//    # return [-1,-1]
//
// #################
// # MY SOLUTION 1 #
// #################
