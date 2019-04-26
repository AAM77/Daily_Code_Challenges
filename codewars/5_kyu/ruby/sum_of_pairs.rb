def sum_pairs(ints, s)
  seen = {}
  for i in ints do
    if seen[s-i]
      return [s-i, i]
    else
      seen[i] = true
    end
  end
  nil
end
