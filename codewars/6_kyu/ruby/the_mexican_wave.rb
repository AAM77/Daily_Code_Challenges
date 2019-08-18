def wave(str)
  counter = 0
  wave = []

  while counter < str.length
    current_str = str.dup
    if current_str[counter] != ' '
      current_str[counter] = current_str[counter].upcase
      wave.push(current_str)
    end

    counter += 1
  end

  wave
end
