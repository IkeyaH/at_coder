s_a = gets.chomp.split('')
A = 'A'
B = 'B'
C = 'C'

len = s_a.length
space_max = len / 2
ans = 0

for sp in 1..space_max do
  for i in 0...len do
    next if s_a[i + (2 * sp)] == nil
    a = s_a[i]
    b = s_a[i + sp]
    c = s_a[i + (2 * sp)]

    if a == A && b == B && c == C
      ans += 1
    end
  end
end

puts ans
