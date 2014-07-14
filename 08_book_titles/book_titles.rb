class Book
#attr_reader read only
 attr_accessor :title # both read and write
 def title=(new_title)
   words=new_title.split(" ")
   words=[words[0].capitalize]+words[1..-1].map do |word|
        if %w{a an and the in of}.include? word
          word
        else
          word.capitalize
        end
    end

    return @title=words.join(" ")
end



end
book=Book.new
book.title="i jack i an  in is rich"
puts book.title