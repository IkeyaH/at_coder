N, K = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

ans = 1

arr.each do |a|
  ans *= a
  ans = 1 if ans.to_s.length > K
end

puts ans
