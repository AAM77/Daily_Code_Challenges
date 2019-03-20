# Name:
# Difficulty:
#
# --- sources ---
# Website:
# URL:
#
#
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
# Create an empty new_string
# Create a list of vowels
# Iterate through the string provided:
    # for each character in the string:
        # if the character is not in the list of vowels:
            # append the character to the new_string

# return the new_string


#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def disemvowel(string):
    new_str = ''
    vowels = list('aeiouAEIOU')

    for char in string:
        if char not in vowels:
            new_str += char

    return new_str
