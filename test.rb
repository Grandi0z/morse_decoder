def decode_char(var)
    @morse_code = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
                    'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-',
                    'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-',
                    'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--',
                    'X' => '-..-', 'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----',
                    '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....', '6' => '-....',
                    '7' => '--...', '8' => '---..', '9' => '----.' }
    @morse_code.each do |key, value|
      return key if var == value
    end
  end
  
  def decode_word(var)
    @arr_of_symbols = var.split
    @arr_of_word = []
    @arr_of_symbols.each do |symbol|
      letter = decode_char(symbol)
      @arr_of_word.push(letter)
    end
    @arr_of_word.join
  end
  
  def decode(var)
    @arr_of_word_symbols = var.split('   ')
    @arr_of_words = []
    @arr_of_word_symbols.each do |symbols|
      word = decode_word(symbols)
      @arr_of_words.push(word)
    end
    @arr_of_words.join(' ')
  end
  
  puts decode_char('..-')
  puts decode_word('-- -.--')
  puts decode('-- -.--   -. .- -- .')
  puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
  