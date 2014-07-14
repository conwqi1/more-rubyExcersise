def translate(words)
arr=[]
arr=words.split(" ")

for i in (0..arr.length-1) 
  if arr[i].include? "qu"
       for j in (0..arr[i].length-1)
         if %w(a e i o ).include? arr[i][0]
            break
         else
             arr[i]="#{arr[i][1..-1]}"+"#{arr[i][0]}"
            # puts arr[i]
         end
    end
  else
    for j in (0..arr[i].length-1)
         if %w(a e i o u).include? arr[i][0]
            break
         else
             arr[i]="#{arr[i][1..-1]}"+"#{arr[i][0]}"
            # puts arr[i]
         end
    end
  end
end


for i in (0..arr.length-1) 
      arr[i]=arr[i]+"ay"
end

return arr.join(" ")
end


puts translate("jack is rich")



#def consonant(word)
#     word=word[0][1..-1].to_s+word[0][0].to_s
#end
