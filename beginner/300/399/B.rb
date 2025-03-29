N = gets.to_i
P = gets.split.map(&:to_i)
pt = P.tally.sort { |a, b| b <=> a }

ans = Array.new(N, 0)
now = 1
pt.each do |pn, i|
  N.times do |j|
    ans[j] = now if P[j] == pn
  end
  now += i
end

puts ans
