# todo: 途中だで！
N, K = gets.split.map(&:to_i)
s = gets.chomp

N.times do |i|
  if N[i] == 'o'
    s[i-1] = '.' if i-1 > 0
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
N.times do |i|
  if s[i] == '?' 
    if i == 0
      s[i] = 'o'
    else
      s[i] = 'o' if s[i-1] != 'o'
    end
  end
end

ocm = s_dup.count('o')

if ocm > K
  puts s
  exit
else

end
