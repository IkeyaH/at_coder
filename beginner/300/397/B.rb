s = gets.chomp.split('')

ans = 0

ans += 1 if s[0] == 'o'
ans += 1 if s[-1] == 'i'

len = s.length
for i in 0...(len - 1) do
  now = s[i]
  ne = s[i + 1]
  ans += 1 if now == ne
end

puts ans
