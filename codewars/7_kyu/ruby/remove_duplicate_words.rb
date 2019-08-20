def remove_duplicate_words(s)
  existing_words = {};
  s.split(' ').map do |w|
    unless (existing_words[w])
      existing_words[w] = 1;
      w
    end
  end.compact.join(' ')
end
