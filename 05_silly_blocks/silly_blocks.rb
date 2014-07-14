def reverser
    #yield is used here to invoke the block
    yield.split(' ').map(&:reverse).join(' ')
end
    #pass value to the block
def adder i=1
    yield+i
end

    #http://www.tutorialspoint.com/ruby/ruby_blocks.html
def repeater i= 1
   i.times do
    yield
  end
end