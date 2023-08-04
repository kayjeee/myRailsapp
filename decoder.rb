def decode_word(morse_word)
  morse_word.split.map { |char| decode_char(char) }.join
end

def decode(morse_message)
  morse_message.split('   ').map { |word| decode_word(word) }.join(' ')
end

add # Example usage:
morse_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(morse_code) # Output: "ABOXFULOFFRIES"