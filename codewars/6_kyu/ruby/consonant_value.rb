# https://www.codewars.com/kata/consonant-value/train/ruby

# PSUEDOCODE
# Objective:
  # return the highest value formed by
  # a group of consecutive consonants in a string

# STEPS
# create an array with the elements a, e, i, o, and u
# create a hash containing all letters and their values
# create a variable to represent max_substring_value
# create a variable to represent current_substring_value
# split the string
# iterate through it
# if the character is a consonant, add it to the current substring
# else:
  # if current substring value is greater than max substring value
    # reassign max_substring to be current_substring
    # reassign max_substring value to be current_substring value
  # reset current_substring
  # reset current_substring_value
#
# return the max_substring_value

# ATTEMPT 1
def solve(str)
  vowels = ['a','e','i','o','u'];
  alphabet = {
    :a => 1,
    :b => 2,
    :c => 3,
    :d => 4,
    :e => 5,
    :f => 6,
    :g => 7,
    :h => 8,
    :i => 9,
    :j => 10,
    :k => 11,
    :l => 12,
    :m => 13,
    :n => 14,
    :o => 15,
    :p => 16,
    :q => 17,
    :r => 18,
    :s => 19,
    :t => 20,
    :u => 21,
    :v => 22,
    :w => 23,
    :x => 24,
    :y => 25,
    :z => 26
  };

  max_substring_value = 0;
  current_substring_value = 0;

  str.chars.each do |c|
    unless vowels.include?(c)
      current_substring_value += alphabet[:"#{c}"];
    else
      if current_substring_value > max_substring_value
        max_substring_value = current_substring_value;
      end
      current_substring_value = 0;
    end
  end

  max_substring_value
end

# ATTEMPT 1 - Refactored
def solve(str)
  alphabet = {
    :a => 1,
    :b => 2,
    :c => 3,
    :d => 4,
    :e => 5,
    :f => 6,
    :g => 7,
    :h => 8,
    :i => 9,
    :j => 10,
    :k => 11,
    :l => 12,
    :m => 13,
    :n => 14,
    :o => 15,
    :p => 16,
    :q => 17,
    :r => 18,
    :s => 19,
    :t => 20,
    :u => 21,
    :v => 22,
    :w => 23,
    :x => 24,
    :y => 25,
    :z => 26
  };

  max_substring_value = 0;
  current_substring_value = 0;

  str.chars.each do |c|
    unless c =~ /[aeiou]/
      current_substring_value += alphabet[:"#{c}"];
    else
      if current_substring_value > max_substring_value
        max_substring_value = current_substring_value;
      end
      current_substring_value = 0;
    end
  end

  max_substring_value
end
