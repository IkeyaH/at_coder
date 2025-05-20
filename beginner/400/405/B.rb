N, M = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
a_t = arr.tally

ans = 0
M.times do |i|
  if !a_t.key?(i+1)
    puts ans
    exit
  end
end

(N-1).downto(0) do |i|
  target = arr[i]
  a_t[target] -= 1
  ans += 1
  break if a_t[target] == 0
end

puts ans
