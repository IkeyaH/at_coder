# todo: wa!
N = gets.to_i
Pair = Struct.new(:left, :right)
arr = []

min = 0
ans = []
N.times do
  l, r = gets.split.map(&:to_i)
  arr << Pair.new(l, r)
  ans << l
  min += l
end

if min > 0
  puts 'No'
  exit
end

r = min
N.times do |i|
  diff = arr[i].right - arr[i].left
  if diff + r >= 0
    ans[i] = arr[i].left - r
    break
  else
    r += diff
    ans[i] = arr[i].right
  end
end

puts 'Yes'
puts ans.join(' ')
