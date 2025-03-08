Q = gets.to_i
mon = Array.new(100, 0)
ans = []

Q.times do
  q = gets.split.map(&:to_i)
  if q.length == 1
    ans << mon.pop
  else
    mon.push(q[1])
  end
end

puts ans
