def longest_consec(strarr, k)
    longest_str = ''

    if k > 0 && k <= strarr.length
      strarr.each.with_index do |word, i|
        ctd_word = strarr[i, k].join('')
        longest_str = ctd_word if ctd_word.length > longest_str.length
      end
    end

    longest_str
end
