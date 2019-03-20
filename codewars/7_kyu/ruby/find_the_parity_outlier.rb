# Name:
# Difficulty:
#
# --- sources ---
# Website:
# URL:
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
# count the number of even numbers
# count the number of odd numbers

# if the number of even numbers is two or greater:
  # iterate through and return the number that is odd
# else:
  # iterate through and return the number that is even



#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def find_outlier(integers)
  even_count = integers.count { |n| n.even? }
  odd_count = integers.count { |n| n.odd? }

  if (even_count >= 2)
    integers.find { |n| n.odd? }
  else
    integers.find { |n| n.even? }
  end

end

#***********#
# Attempt 2 #
#***********#

def find_outlier(integers)
  even_count = integers.count { |n| n.even? }
  (even_count >= 2) ? integers.find { |n| n.odd? } : integers.find { |n| n.even? }
end

#***********#
# Attempt 3 #
#***********#

def find_outlier(integers)
  even_count = integers.first(3).count { |n| n.even? }
  (even_count >= 2) ? integers.find { |n| n.odd? } : integers.find { |n| n.even? }
end
