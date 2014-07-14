def measure num=1
#http://www.ruby-doc.org/core-2.1.1/Time.html for reference
#
total=0

num.times do
   start=Time.now
       yield
   ending=Time.now
   total+=ending-start
end

avg=total/num

end

