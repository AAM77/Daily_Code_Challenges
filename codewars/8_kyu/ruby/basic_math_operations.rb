# Name: Basic Mathematical Operations
# Difficulty: 8 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/basic-mathematical-operations/train/ruby
#
#
#
##################
#                #
#  Instructions  #
#                #
##################
# Your task is to create a function that does four basic mathematical operations.
#
# The function should take three arguments - operation(string/char), value1(number), value2(number).
# The function should return result of numbers after applying the chosen operation.
#
# Examples:
#
# basicOp('+', 4, 7)         // Output: 11
# basicOp('-', 15, 18)       // Output: -3
# basicOp('*', 5, 5)         // Output: 25
# basicOp('/', 49, 7)        // Output: 7

##############
# PSEUDOCODE #
##############
#



#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def basic_op(operator, value1, value2)

  case operator
  when '+'
    value1+value2
  when '-'
    value1-value2
  when '*'
    value1*value2
  when '/'
    value1/value2
  else
    "Invalid Operator"
  end

end
