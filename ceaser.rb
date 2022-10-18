require "pry-byebug"

def translate_to_int_array(string)
  string.split("").map { |letter| letter.ord}
end

def translate_to_char_array(array)
  array.map { |value| value.chr }
end

def is_alphabet?(value)
  (value >= 65 && value <= 90) || (value >= 97 && value <= 122)
end

def shift(array, shift_value)
  letters_in_alphabet = 26
  array.map do |c|
    base = c > 90 ? 97 : 65
    is_alphabet?(c) ? (c - base + shift_value) % letters_in_alphabet + base : c
  end
end

def ceaser_cipher(string, shift_value)
  phrase = translate_to_int_array(string)
  phrase = shift(phrase, shift_value)
  translate_to_char_array(phrase).join
end

p ceaser_cipher("test? test_ one# two$ TEST& TEST^ ONE* TWO!", 223434);
p ceaser_cipher("z Z", 1);
