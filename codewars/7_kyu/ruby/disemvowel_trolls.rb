# Name: Disemvowel Trolls
# Source: CodeWars
# Difficulty: 7 kyu
#
# URL: https://www.codewars.com/kata/disemvowel-trolls/train/ruby
#
# Attempted by:
# 1. Adeel - 03/11/2019
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
#
# Trolls are attacking your comment
# section!
#
# A common way to deal with this
# situation is to remove all of
# the vowels from the trolls'
# comments, neutralizing the
# threat.
#
# Your task is to write a function
# that takes a string and return a
# new string with all vowels
# removed.
#
# For example, the string "This
# website is for losers LOL!"
# would become "Ths wbst s fr lsrs
# LL!".
#
# Note: for this kata y isn't
# considered a vowel.

#################
#  PseudoCode:  #
#################

# Create a list of lowercase and uppercase vowels
# Create a list of characters of a string
# Remove the vowels from the array
# Join the characters back together


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

def disemvowel(str)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  (str.chars - vowels).join("")
end


#*******************#
# Adeel's Attempt 2 #
#*******************#

def disemvowel(str)
  str.delete('aeiouAEIOU')
end
