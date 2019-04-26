def unique_in_order(iterable)
  arr = iterable.is_a?(String) ? iterable.split('') : iterable

  arr.map.with_index do |e, i|
    if i == 0
      e
    elsif e != iterable[i-1]
      e
    end
  end.compact
end
