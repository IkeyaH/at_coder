n, T = gets.chomp.split(' ')
N = n.to_i

s_arr = []
N.times do
  s_arr << gets.chomp
end

ans = []

def ham(s1, s2)
  return 999 if s1.size != s2.size
  count = 0
  for i in 0...s1.size
    count += 1 if s1[i] != s2[i]
  end
  return count
end

def ff(s, t)
  return false if s.size != t.size + 1
  si = 0
  (0...t.length).each do |ti|
    while (si < s.size && s[si] != t[ti])
      si += 1
    end
    return false if si == s.size
    si += 1
  end
  return true
end

for i in 0...N do
  target = s_arr[i]
  next if !(target.size + 1 >= T.size)

  ok = false
  ok = true if ff(target, T)
  ok = true if ff(T, target)
  ok = true if ham(target, T) <= 1
  ans << i + 1 if ok
end

puts ans.length
puts ans.join(' ')
