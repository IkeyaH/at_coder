N = gets.to_i
la = []
ra = []

N.times do
  l, r = gets.split.map(&:to_i)
  la << l
  ra << r
end

min = la.sum
max = ra.sum
if min > 0 || max < 0
  puts 'No'
  exit
end

ans = la.dup
N.times do |i|
  if min + (ra[i] - la[i]) <= 0
    ans[i] = ra[i]
    min = min + (ra[i] - la[i])
  else
    ans[i] = la[i] + min.abs
    break
  end
end

puts 'Yes'
puts ans.join(' ')
