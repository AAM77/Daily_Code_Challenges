# Name: Find the Odd Int
# Difficulty: 6 kyu
#
# --- sources ---
# Website:  CodeWars
# URL: https://www.codewars.com/kata/find-the-odd-int/train/ruby
#
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
# Given an array, find the int that appears an odd number of times.
#
# There will always be only one integer that appears an odd number of times.

##############
# PSEUDOCODE #
##############
#

##################
# RUBY SOLUTIONS #
##################

#**********************#
# Adeel's Attempt 1    #
#**********************#

def find_it(seq)
  set_num = 0
  seq.each do |num|
    if seq.count(num) % 2 != 0
      set_num = num
    end
  end

  set_num
end
