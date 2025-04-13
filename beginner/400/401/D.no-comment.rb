N, K = gets.split.map(&:to_i)
s = gets.chomp

N.times do |i|
  if s[i] == 'o'
    s[i-1] = '.' if i-1 >= 0
    s[i+1] = '.' if i+1 < N
  end
end

on = s.count('o')
if on == K
  N.times { |i| s[i] = '.' if s[i] == '?' }
  puts s
  exit
end

sdup = s.dup
N.times do |i|
  if i == 0
    sdup[i] = 'o' if sdup[i] == '?'
  else
    sdup[i] = 'o' if sdup[i-1] != 'o' && sdup[i] == '?'
  end
end
onm = sdup.count('o')

if onm > K
  puts s
  exit
end

hc = 0
hca = []
N.times do |i|
  if s[i] == '?'
    hc += 1
    hca << [i-hc+1,hc] if i == (N-1)
  else
    hca << [i-hc,hc] if hc > 0
    hc = 0
  end
end

hca.each do |a,b|
  next if b.even?
  b.times do |v|
    if v.even?
      s[a+v] = 'o'
    else
      s[a+v] = '.'
    end
  end
end

puts s
