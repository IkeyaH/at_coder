N, M = gets.split.map(&:to_i)
k = Array.new(N+1) { Array.new } # その食材が利用されている料理index
l = Array.new(N+1) # 料理indexが利用している食材の数

M.times do |i|
  m = i+1
  a = gets.split.map(&:to_i)
  l[m] = a[0]
  a[0].times do |j|
    k[a[j+1]] << m
  end
end

B = gets.split.map(&:to_i)
ans = Array.new(B.length, 0)
B.each_with_index do |b, i|
  if i != 0
    ans[i] = ans[i-1]
  end
  dishes = k[b]
  dishes.each do |dish|
    l[dish] -= 1
    ans[i] += 1 if l[dish] == 0
  end
end

puts ans
