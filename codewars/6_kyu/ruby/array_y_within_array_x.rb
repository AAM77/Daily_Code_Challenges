# https://www.codewars.com/kata/does-array-x-contain-all-values-within-array-y/train/ruby
# complete this method so that true is returned if the current array
# instance contains all values within the other_array instance.

# PSEUDOCODE
  # Ojective
    # instance returns true if contains the passed in array

# STEPS
  # create hash
  # iterate through the passed in array
    # add num as key w/ value 1
  # create a counter and initialize w/ 0
  # iterate through the instance (array)
    # if num in the object, increase counter by 1
  # at end of loop:
  # if counter == passed in array.length
      # return true
  # else
      # return false
  #

class Array
  def contains_all?(other_array)
    targets = {};
    counter = 0;

    other_array.each { |num| targets[num] = 1 };
    self.each { |num| counter +=1 if targets[num] };

    counter == other_array.length ? true : false;
  end
end
