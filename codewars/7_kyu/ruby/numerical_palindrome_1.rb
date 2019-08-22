#https://www.codewars.com/kata/numerical-palindrome-number-1/train/ruby

# PSEUDOCODE
#change num into a string
# split the string
# if num === num.reverse
  # true
# else
  # false
# end

def palindrome(num)
  if num.is_a?(String) || num < 0
    "Not valid"
  else
    num.to_s.split('').reverse.join('') === num.to_s
  end
end
