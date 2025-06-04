N, M = gets.split.map(&:to_i)
covered = Array.new(N+1, 0)

M.times do
  l, r = gets.split.map(&:to_i)
  l, r = l - 1, r - 1
  covered[l] += 1
  covered[r+1] -= 1
end

cum = Array.new(N, 0)
n = 0
N.times do |i|
  n += covered[i]
  cum[i] = n
end

puts cum.sort[0]
