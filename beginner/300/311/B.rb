N, D = gets.chomp.split(' ').map(&:to_i)
sche = []
N.times do
  sche << gets.chomp.split('')
end

count = 0
result = 0

for i in 0...D do
  ok = true
  sche.each do |s|
    ok = false if s[i] == 'x'
  end
  if ok == true
    count += 1
  else
    count = 0
  end
  result = count if count > result
end

puts result
