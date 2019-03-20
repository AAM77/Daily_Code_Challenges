# Name: Multiples of 3 or 5
# Difficulty: 6 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/multiples-of-3-or-5/train/ruby
#

##################
#                #
#  Instructions  #
#                #
##################
#
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
#
# Note: If the number is a multiple of both 3 and 5, only count it once.
#
# Courtesy of ProjectEuler.net


##############
# PSEUDOCODE #
##############
#
# create an array of numbers from 1 to the number ((1..number).to_a)
# create an empty array, called 'multiples'
# (iterate through array) for each number:
 # if the number is divisible by (3 && 5) or (3) or (5):
   # add it to the 'multiples' array

# return the sum of the multiples array


#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def solution(number)

  num_array = (1...number).to_a
  multiples = []

  num_array.each do |num|
    if (num%3 == 0 && num%5 == 0) || (num%3 ==0) || (num%5 == 0)
      multiples.push(num)
    end
  end

  multiples.sum
end


#***********#
# Attempt 2 #
#***********#

def solution(number)
  num_array = (1...number).to_a
  num_array.map { |num| num if (num%3 == 0 && num%5 == 0) || (num%3 ==0) || (num%5 == 0) }.compact.sum
end


#***********#
# Attempt 3 #
#***********#

def solution(number)
  (1...number).map { |n| n if (n%3 == 0 && n%5 == 0) || (n%3 ==0) || (n%5 == 0) }.compact.sum
end

#***********#
# Attempt 4 #
#***********#

(1...number).select { |n| n if (n%3 == 0 && n%5 == 0) || (n%3 ==0) || (n%5 == 0) }.sum


#***********#
# Attempt 5 #
#***********#

(1...number).select { |n| n if (n%3 == 0 && n%5 == 0) || (n%3 ==0) || (n%5 == 0) }.inject(:+)
