N, Q = gets.split.map(&:to_i)
S = gets.chomp

now = 0
N.times do |i|
  next if i == 0
  next if i == 1
  if S[i-2, 3] == 'ABC'
    now += 1
  end
end


ans = []
Q.times do |n|
  _x, c = gets.chomp.split
  x = _x.to_i - 1
  3.times do |i|
    base = x + i
    next if base - 2 < 0
    next if base > N - 1
    now -= 1 if S[base-2, 3] == 'ABC'
  end
  S[x] = c
  3.times do |i|
    base = x + i
    next if base - 2 < 0
    next if base > N - 1
    now += 1 if S[base-2, 3] == 'ABC'
  end
  ans << now
end

puts ans
