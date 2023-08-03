# frozen_string_literal: true

# Your other methods and code here...

# Decode an entire word in Morse code.
# Takes a string parameter `morse_word` and returns the string representation.
# Every character in a word will be separated by a single space.
def decode_word(morse_word)
  morse_word.split.map { |char| decode_char(char) }.join
end

# Decode the entire message in Morse code.
# Takes a string parameter `morse_message` and returns the string representation.
# Every word will be separated by 3 spaces.
def decode(morse_message)
  morse_message.split('   ').map { |word| decode_word(word) }.join(' ')
end

# Example usage:
morse_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(morse_code) # Output: "ABOXFULOFFRIES"
