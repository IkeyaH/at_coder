S = gets.split('').map(&:to_i)
n = S.count(2)

ans = ''
n.times do
  ans = ans + '2'
end
puts ans
