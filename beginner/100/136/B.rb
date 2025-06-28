
N = gets.to_i

ans = 0
1.upto(N).each do |n|
  ans += 1 if n.to_s.length.odd?
end

puts ans
