# Name: Get the Middle Character
# Difficulty: 7 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/get-the-middle-character/train/python
#
#

##################
#                #
#  Instructions  #
#                #
##################
#
#
# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.
#
# #Examples:
#
# Kata.getMiddle("test") should return "es"
#
# Kata.getMiddle("testing") should return "t"
#
# Kata.getMiddle("middle") should return "dd"
#
# Kata.getMiddle("A") should return "A"
# #Input
#
# A word (string) of length 0 < str < 1000 (In javascript you may get slightly more than 1000 in some test cases due to an error in the test cases). You do not need to test for this. This is only here to tell you that you do not need to worry about your solution timing out.
#
# #Output
#
# The middle character(s) of the word represented as a string.

##############
# PSEUDOCODE #
##############
#
# Objectives:
# - if string length odd: return middle char
# - if string length even: return middle 2 chars

# PSEUDOCODE
# check the length of the string
# if odd length: get the element in
# the Math.floor(length/2) index
# if even length: get the elements in the Math.floor(length/2) - 1 and Math.floor(length/2) positions


#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def get_middle(s):
    from math import floor

    hlf_lngth = int(floor(len(s)/2))
    if len(s)%2 == 0:
        return "{}{}".format(s[hlf_lngth - 1], s[hlf_lngth])
    else:
        return "{}".format(s[hlf_lngth])


#***********#
# Attempt 2 #
#***********#

def get_middle(s):
    from math import floor

    hlf_lngth = int(floor(len(s)/2))
    return "{}{}".format(s[hlf_lngth - 1], s[hlf_lngth]) if len(s)%2 == 0 else "{}".format(s[hlf_lngth])
