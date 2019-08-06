# https://www.codewars.com/kata/does-an-array-contain-all-elements-from-another-array/train/ruby

# PSEUDOCODE
  # Objective
    # check if the 'haystack' array contains the 'needle'
    # must be strict
      # (must match type)
      # (must account for repeats)

# STEPS
  # create a needle_hash
  # iterate through the needle
    # if in needle_hash
      # increment value by 1
    # else
      # create a key for each with a value (counter) of 1

  # create a haystack_nums hash
  # iterate through the haystack
    # if in needle_targets hash
      # if in haystack_nums has:
        # increment value by 1
      # else
        # add as key to haystack_nums w/ a value of 1

  # if needle_targets == haystack_nums
      # return true
  # else
      # return false


# ATTEMPT 1
def contains_all?(haystack, needle)

  needle_hash = {}
  haystack_hash = {}

  needle.each do |num|
    if needle_hash[num]
      needle_hash[num] += 1
    else
      needle_hash[num] = 1
    end
  end

  haystack.each do |num|
    if needle_hash[num]
      if !haystack_hash[num]
        haystack_hash[num] = 1
      elsif (haystack_hash[num] < needle_hash[num])
        haystack_hash[num] += 1
      end
    end
  end

  if needle_hash == haystack_hash
    true
  else
    false
  end
end

# ATTEMPT 1 - REFACTORED

def contains_all?(haystack, needle)

  needle_hash = {}
  haystack_hash = {}

  needle.each { |num| needle_hash[num] ? needle_hash[num] += 1 : needle_hash[num] = 1 }

  haystack.each do |num|
    if needle_hash[num]

      if !haystack_hash[num]
        haystack_hash[num] = 1
      elsif (haystack_hash[num] < needle_hash[num])
        haystack_hash[num] += 1
      end

    end
  end

  needle_hash == haystack_hash ? true : false
end
