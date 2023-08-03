# frozen_string_literal: true

def decode_char(morse_code)
  morse_to_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', ' ' => ' ' # space
  }

  morse_to_char[morse_code]
end

def decode_word(morse_word)
  morse_word.split(' ').map { |char| decode_char(char) }.join
end

def decode(message)
  words = message.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

# Test the decoding with the given Morse code message
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(message) # Output: "ABOX FULL OF RUBIESok"
