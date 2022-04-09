# check whether a given number is armstrong or not

arm = gets.chomp.to_i
puts arm.to_s.split('').map(&:to_i).map { |x| x**3}.inject(:+) == arm
