def iq_test(numbers)
  ints = numbers.split.map { |n| n.to_i }
  ints.count { |n| n.even? } > 1 ? ints.find_index { |n| n.odd? } + 1 : ints.find_index { |n| n.even? } + 1
end
