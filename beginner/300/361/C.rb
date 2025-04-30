N, M = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i).sort

w = N - M

ans = Float::INFINITY
(M + 1).times do |i|
  na = aa[i..(i+w-1)]
  ans = [ans, na[-1] - na[0]].min
end


puts ans
