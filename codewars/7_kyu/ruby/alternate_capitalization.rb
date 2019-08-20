def capitalize(s)
  even_string = '';
  odd_string = '';
  s.split('').each .with_index do |l,i|
    if i.even?
      even_string += l.upcase
      odd_string += l
    else
      even_string += l
      odd_string += l.upcase
    end
  end

  [even_string, odd_string]
end
