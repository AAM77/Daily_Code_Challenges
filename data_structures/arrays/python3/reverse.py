###################
##               ##
##   CHALLENGE   ##
##               ##
###################

#
#  An array is a type of data structure that stores elements of the same type in a contiguous block of memory. In an array, , of size , each memory location has some unique index,  (where ), that can be referenced as  (you may also see it written as ).
#
#  Given an array, , of  integers, print each element in reverse order as a single line of space-separated integers.
#
#  Note: If you've already solved our C++ domain's Arrays Introduction challenge, you may want to skip this.
#
#  Input Format
#
#  The first line contains an integer,  (the number of integers in ).
#  The second line contains  space-separated integers describing .
#
#  Constraints
#
#  Output Format
#
#  Print all  integers in  in reverse order as a single line of space-separated integers.
#


# MY SOLUTIONS:

# Pseudocode:
#   make a new, empty, list to place numbers in
#   take the current array and start at the end
#   take each number and keep decreasing until you are at the start gain



# Solution 1:

def reverseArray1(a):
    reverse_a = []
    i = len(a) - 1

    while i >= 0:
        reverse_a.append(a[i])
        i -= 1

    return reverse_a


# Solution 2:
def reverseArray2(a):
    reverse_a = []

    for num in a:
        reverse_a.insert(0, num)

    return reverse_a
