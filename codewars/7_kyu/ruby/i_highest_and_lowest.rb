# Name: Highest and Lowest
# Difficulty: 7 kyu
#
# --- sources ---
# Website: Codewars
# URL: https://www.codewars.com/kata/highest-and-lowest/train/ruby
#

##################
#                #
#  Instructions  #
#                #
##################
#
#

##############
# PSEUDOCODE #
##############
#
# split the numbers string by space and map each number to an array after converting to an integer (to_i)
# assign this to a variable, int_array
# assign the max value in the int_array to a variable, max_int
# assign the min value in the int_array to a variable, min_int
# return an interpolated string with the max_int and min_int separated by a space.



#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def high_and_low(numbers)
  int_array = numbers.split(' ').map { |n| n.to_i }
  max_int = int_array.max
  min_int = int_array.min

  "#{max_int} #{min_int}"
end
