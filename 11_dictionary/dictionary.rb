class Dictionary

def entries
  #@entries=Hash.new(" ")
    @entries ||= {}
end

def keywords
	@entries.keys.sort
end

def include? (word)
     entries.keys.include? word
end



def add (keywords, value=nil)
     entries[keywords]=value
end


def find (input)
   arr={}
   entries.each do |key,value|
      arr[key]=value if key.include?input
   end
   arr
end

def printable
  entries.map do |key|
      %Q{[#{key.first}] "#{key.last}"}
    end.sort.join("\n")
  end

end

@dictionary=Dictionary.new
@dictionary.add("jack","rich")
puts @dictionary.entries
puts @dictionary.keywords
puts @dictionary.include?("jack")
puts @dictionary.include?("pack")
puts @dictionary.printable

