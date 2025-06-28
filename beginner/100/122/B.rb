S = gets.chomp
len = S.length
AR = ['A', 'C', 'G', 'T']

c = 0
ans = 0
len.times do |i|
  if AR.include?(S[i])
    c += 1
    ans = [ans, c].max
  else
    c = 0
  end
end

puts ans
