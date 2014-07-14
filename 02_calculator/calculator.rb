def add(n1,n2)
   return n1+n2
end

def subtract(n1,n2)
	return n1-n2
end

def sum(arr)
    return 0 if arr.empty?
    arr.inject{|sum,x| sum + x }
end

def multiply(n1,n2)
    return n1*n2
end

def power(n1,n2)
    return n1**n2
end
