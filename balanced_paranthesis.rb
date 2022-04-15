exp = "[()]{}{[()()]()}"
arr = exp.split('').uniq # ['[', ']', '(', ')', '{', '}']
res = {'[' => 0, ']' => 0, '(' => 0, ')' => 0, '{' => 0, '}' => 0 }
arr.each do |a|
 exp.chars.each do |e|
   res[e] = res[e] + 1 if  res.keys.include?(e) && e == a
 end
end

if res.values.length == res.values.select {|x| x %2 == 0}.length
  puts 'balanced'
else
  puts 'not balanced'
end


def is_balanced(opener, closer, str)
  cnt = 0
  adds = {opener => 1, closer => -1}
  pars = str.chars.select{|c| [opener, closer].include? c }
  pars.each{ |c| cnt += adds[c]; return false if cnt < 0 }
  cnt == 0
end

def is_balanced2(str)
  [['(', ')'], ['[', ']'], ['{', '}']].map{ |ps| is_balanced(*ps, str) }.all?
end
