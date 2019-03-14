# Name: Square Every Digit
# Difficulty: 7 kyu
#
# --- sources ---
# Website:  CodeWars
# URL: https://www.codewars.com/kata/square-every-digit/train/ruby
#

##################
#                #
#  Instructions  #
#                #
##################
#
# Welcome. In this kata, you are asked to square every digit of a number.
#
# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
#
# Note: The function accepts an integer and returns an integer
# Sample tests:
# ```Test.assert_equals(square_digits(3212), 9414)
# Test.assert_equals(square_digits(2112), 4114)
# Test.assert_equals(square_digits(1111), 1111)
# Test.assert_equals(square_digits(1234321), 14916941)
# Test.assert_equals(square_digits(0), 0)```

##############
# PSEUDOCODE #
##############
#
# change the number to a string
# split the num_string into an array of chars
# iterate through the num_string
# change each one to a number and square it
# change it back to a string
# join the entire array

##################
# RUBY SOLUTIONS #
##################

#**********************#
# Adeel's Attempt 1    #
#**********************#

def square_digits num
  num.to_s.chars.map { |n| ((n.to_i)**2).to_s }.join('').to_i
end
