def frame(text, char)

  longest_word_length = (text.map { |w| w.length }.max)
  frame_height = text.length + 2
  frame_width = longest_word_length + 4

  frame_top_bottom = char*(frame_width)
  frame_str = ''

  #frame-top
  frame_str += "#{frame_top_bottom}\n"

  #frame-middle (content and the sides of the frame)
  text.each do |word|
    diff = longest_word_length - word.length
    spaces = ' '*diff
    frame_str += "#{char} #{word} #{spaces}#{char}\n"
  end

  #frame-bottom
  frame_str += "#{frame_top_bottom}"

  #completed frame
  frame_str
end
