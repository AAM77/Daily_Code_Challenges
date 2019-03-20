# Name: Persistent Bugger
# Difficulty: 6 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/persistent-bugger/train/ruby
#

##################
#                #
#  Instructions  #
#                #
##################
#
#
# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
#
# For example:
#
#  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit
#
#  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2
#
#  persistence(4) # returns 0, because 4 is already a one-digit number

##############
# PSEUDOCODE #
##############
#
# Objective:
  # continue multipling the digits of a number until there is a single digit
  # return the number of times (count) the program needs to do this.

# PSEUDOCODE
  # declare a variable, string_num, and it the string version of n
  # declare a variable, num_length, and assign it the length of string_num
  # declare a variable, mult_loop_count, and assign it a value 0.

  # start a while loop that checks if the length of string_num is greater than 0:
    # declare a variable, result, and assign it a value of 1

    # iterate through string_num:
    # for each number in string_num:
      # (multiply all the numbers together) =>
      #change each the number to an intger and multiply it with the result
    # END the for loop

    # once the for loop finishes, change the result to a string and assign it to string_num
    # assign the length of the this string_num to num_length
    # increment mult_loop_count by 1
  # END the while loop

  # this should loop until the length of string_num is 1

  # return the mult_loop_count once the while loop finishes running


#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def persistence(n)
    string_num = n.to_s.split('')
    num_length = string_num.length

    mult_loop_count = 0

    while (num_length > 1)
      result = 1
      string_num.each do |num|
        result *= num.to_i
      end

      string_num = result.to_s.split('')
      num_length = string_num.length
      mult_loop_count += 1
    end

    mult_loop_count
end
