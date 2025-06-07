N, K = gets.split.map(&:to_i)
s = gets.chomp

N.times do |i|
  if s[i] == 'o'
    s[i-1] = '.' if i-1 >= 0
    s[i+1] = '.' if i+1 < N
  end
end

oc = s.count('o')
if oc == K
  N.times do |i|
    s[i] = '.' if s[i] == '?'
  end
  puts s
  exit
end

s_dup = s.dup
s_dup[0] = 'o' if s_dup[0] == '?'

1.upto(N-1).each do |i|
  s_dup[i] = 'o' if s_dup[i] == '?' && s_dup[i-1] != 'o'
end


ocm = s_dup.count('o')

if ocm > K
  puts s
  exit
end

oa = []
boc = 0
N.times do |i|
  if s[i] == '?'
    boc += 1
    oa << [i-boc+1, boc] if i == (N-1)
  else
    oa << [i-boc, boc] if boc > 0
    boc = 0
  end
end

oa.each do |x, y|
  next if y.even?
  y.times do |i|
    if i.even?
      s[x+i] = 'o'
    else
      s[x+i] = '.'
    end
  end
end

puts s
