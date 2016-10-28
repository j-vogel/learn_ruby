#write your code here
def translate words
  special_letters = ["a", "e", "i", "o", "u", "q"]
  word_holder = words.split
  (0..(word_holder.length - 1)).each do |i|
    # check if first letter is a vowel or q
    if special_letters.include?(word_holder[i][0].downcase)
      if word_holder[i][0].downcase == "q"
        word_holder[i] = pig_latin_translator(word_holder[i], 2)
      else
        word_holder[i] = pig_latin_translator(word_holder[i])
      end
    # First letter not vowel or q, so check if second letter is not a vowel or q
    elsif !special_letters.include?(word_holder[i][1].downcase)
      if !special_letters.include?(word_holder[i][2].downcase)
        word_holder[i] = pig_latin_translator(word_holder[i], 3)
      else
        word_holder[i] = pig_latin_translator(word_holder[i], 2)
      end
    else
      if word_holder[i][1].downcase == "q"
        word_holder[i] = pig_latin_translator(word_holder[i], 3)
      else
        word_holder[i] = pig_latin_translator(word_holder[i], 1)
      end
    end
  end

  word_holder = word_holder.join(" ")
end

def pig_latin_translator word, number_of_characters = 0
  if number_of_characters == 0
    new_word = word + "ay"
  else
    new_word = word[number_of_characters...word.length] + word[0..(number_of_characters - 1)] + "ay"
  end
end
