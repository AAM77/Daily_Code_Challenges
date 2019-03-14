# Name: Mumbling
# Difficulty: 7 kyu
#
# --- sources ---
# Website:  CodeWars
# URL: https://www.codewars.com/kata/mumbling/train/ruby
#
#

##################
#                #
#  Instructions  #
#                #
##################
#
# This time no story, no theory. The examples below show you how to write function accum:
#
# Examples:
#
# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"
# The parameter of accum is a string which includes only letters from a..z and A..Z.

##############
# PSEUDOCODE #
##############
#
# create an empty string
# iterate through a given string (with index)
# find the index of the character
# print the letter (that number of times + 1) and capitalize it
# if it is not the last letter in the array, add a hyphen to it ' - ' as well
# add this to the empty string above
# do this until the end of the array

##################
# RUBY SOLUTIONS #
##################

#**********************#
# Adeel's Attempt 1    #
#**********************#

def accum(s)

  ltr_sets = []
  s.chars.each_with_index do |c, i|
    ltrs = ''
    (i+1).times { ltrs += c }
    ltr_sets.push(ltrs.capitalize)
  end

  ltr_sets.join('-')
end
