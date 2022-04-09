# reverse a string
inp = "test"# gets.chomp.to_s
rev = inp.split('').reduce { |x,y| y+x}
puts rev

inp = "test"# gets.chomp.to_s
rev = []
strlen = inp.length
puts strlen 
while strlen >= 0 
  rev << inp[strlen]
  strlen -= 1 
end 
puts rev.compact.join('')
