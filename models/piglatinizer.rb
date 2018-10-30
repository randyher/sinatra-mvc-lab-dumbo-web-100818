class PigLatinizer

  attr_reader :text

  # def initialize(text)
  #   @text = text.downcase
  # end

  def piglatinize(text)
    text_array = text.split(" ")

    text_array.map do |word|
      if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
        word+"way"
      elsif word[0] == "I" || word[0] == "E" || word[0] == "O" || word[0] == "A" || word[0] == "U"
        word+"way"
      elsif word[0] == "t" && word[1] == "h"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+"ay"
      elsif word[0] == "p" && word[1] == "l"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+"ay"
      elsif word[0] == "s" && word[1] == "p" && word[2] == "r"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        third_letter = letter_array[2]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+third_letter+"ay"
      elsif word[0] == "p" && word[1] == "r"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+"ay"
      elsif word[0] == "w" && word[1] == "h"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+"ay"
      elsif word[0] == "s" && word[1] == "k"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+"ay"
      elsif word[0] == "S" && word[1] == "t" && word[2] == "r"
        letter_array = word.chars
        first_letter = letter_array[0]
        second_letter = letter_array[1]
        third_letter = letter_array[2]
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+second_letter+third_letter+"ay"
      else
        letter_array = word.chars
        first_letter = letter_array[0]
        letter_array.delete_at(0)
        new_word = letter_array.join
        new_word+first_letter+"ay"
      end
    end.join(" ")

  end


end
