# Name: Exes and Ohs
# Difficulty: between 7 kyu and 6 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/exes-and-ohs/train/ruby
#
#

##################
#                #
#  Instructions  #
#                #
##################
#
# Check to see if a string has the
# same amount of 'x's and 'o's.
# The method must return a boolean
# and be case insensitive. The
# string can contain any char.
#
# Examples input/output:
#
# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

##############
# PSEUDOCODE #
##############
#
# lower case all of the letters in a string
  # count the number of OHs ('o')
  # count the number of EXEs ('x')
  # compare the counts
  # if the same:
      # return true
  # else:
      # return false


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#
def XO(str)
  exes = str.downcase.count('x')
  ohs = str.downcase.count('o')

  exes == ohs ? true : false
end
