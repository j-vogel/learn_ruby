class Book
  attr_reader :name
  attr_writer :name

  def initialize
  end

  def title=(name)
    little_words = ["the", "a", "an", "and", "of", "if", "over", "in"]
    word_holder = name.split
    (0..(word_holder.length - 1)).each do |i|
      if i == 0
        word_holder[i] = word_holder[i].capitalize
      elsif little_words.include?(word_holder[i].downcase)
      else
        word_holder[i] = word_holder[i].capitalize
      end
    end

    @title = word_holder.join(" ")
  end

  def title
    @title
  end

end
