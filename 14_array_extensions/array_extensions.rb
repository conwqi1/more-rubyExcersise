class Array

def sum
	total=0
	self.each do |element|
	   total+=element
	end
	total
end

def square
    #arr=[]
	#self.each do |element|
	#    arr<<element*element
	#end
	#arr

	map{|n| n*n} #better solution
end

def square!
    #arr=[]
	#self.each do |element|
	#  arr<<element=element*element
	#end
	#self=arr  !!!can't change the value of self
	map!{|n| n*n}
end


end

