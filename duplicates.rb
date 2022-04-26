arr = [1,2,3,1,2,2,3,1,3,2,2]
puts arr.each.with_object(Hash.new(0)){|k,v| v[k]+=1}
str = "aabbbccccd"
puts str.chars.each.with_object(Hash.new(0)){|k,v| v[k]+=1}
