N, Q = gets.split.map(&:to_i)
S = gets.chomp

def isAbc?(ind, s, len)
  return false if ind+2 > len-1
  return false if ind < 0
  return true if s.slice(ind, 3) == 'ABC'
  false
end

now = 0
(N).times do |i|
  next if i == 0 || i == 1
  now += 1 if isAbc?(i-2, S, N)
end

ans = []
Q.times do |n|
  _x, c = gets.chomp.split
  x = _x.to_i - 1

  3.times do |i|
    now -= 1 if isAbc?(x-2+i, S, N)
  end
  S[x] = c
  3.times do |i|
    now += 1 if isAbc?(x-2+i, S, N)
  end
  ans << now
end

puts ans
