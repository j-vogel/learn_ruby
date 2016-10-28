#write your code here
def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, times = 2
  ("#{phrase} " * times).strip
end

def start_of_word word, position
  word[0, position]
end

def first_word wordlist
  wordlist.split[0]
end

def titleize words
  little_words = ["the", "and", "a", "of", "if", "over"]
  word_holder = words.split
  (0..(word_holder.length - 1)).each do |i|
    if i == 0
      word_holder[i] = word_holder[i].capitalize
    elsif little_words.include?(word_holder[i].downcase)
    else
      word_holder[i] = word_holder[i].capitalize
    end
  end

  word_holder = word_holder.join(" ")

end
