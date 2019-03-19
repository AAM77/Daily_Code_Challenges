# Name: Decode the Morse Code
# Difficulty: 6 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/decode-the-morse-code/train/ruby
#
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
#


##############
# PSEUDOCODE #
##############
#
# set up an array called 'decoded_words' to collect the decoded words

  # group the morseCode into words by splitting morseCode by three spaces
  # and “left strip” to remove whitespace

  # we will call this split array 'morse_words'
  # iterate through morse_words
  # for each morse_word:
    #split by space to get and array of letters
    # iterate through through the letters
    	# change to a letter using the dictionary/library MORSE_CODE[] and map it to an array of words
    	# join the mapped letters and push the resulting word to the decoded_words array

  # join decoded_words by space and return it


#############
# SOLUTIONS #
#############

#***********#
# Attempt 1 #
#***********#

def decodeMorse(morseCode)
  decoded_words = []
  morse_words = morseCode.lstrip.split('   ')
  morse_words.each do |morse_word|
    decoded_word = morse_word.split(' ').map { |letter| MORSE_CODE[letter] }.join('')
    decoded_words.push(decoded_word)
  end

  decoded_words.join(' ')
end
