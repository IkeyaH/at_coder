# N, M = gets.split.map(&:to_i)
# aa = gets.split.map(&:to_i).sort

# M.times do
#   pp aa
#   f, s = aa[0], aa[1]
#   l, sl = aa[-1], aa[-2]

#   f_diff = s - f
#   l_diff  = l - sl

#   if f_diff >= l_diff
#     aa.shift
#   else
#     aa.pop
#   end
# end

# puts aa[-1] - aa[0]

N, M = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i).sort

w = N - M

ans = Float::INFINITY
(M + 1).times do |i|
  na = aa[i..(i+w-1)]
  ans = [ans, na[-1] - na[0]].min
end


puts ans
