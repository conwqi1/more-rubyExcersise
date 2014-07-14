def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, times = 2)
  ([words] * times).join(" ")
end

def start_of_word(words, n)
  words[0...n]
end

def first_word(words)
  words.split(" ").first
end


def titleize(words)
  arr = words.split.map do |word|
  #%w is the short cut for ["the","and","over"]
    if %w(the and over).include?(word)
       word
    else
      word.capitalize
    end
  end
  arr.first.capitalize!
  arr.join(" ")
end

