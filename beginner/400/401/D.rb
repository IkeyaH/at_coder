# WA: まあ、無理やりだったよなぁ。
N, K = gets.split.map(&:to_i)
s = gets.chomp
# s_dup = s.dup

N.times do |i|
  if i == 0
    if s[i] == '?' && s[i + 1] == 'o'
      s[i] = '.'
    elsif s[i] == 'o'
      s[i+1] = '.'
    end
  elsif i == (N - 1)
     if s[i] == '?' && s[i - 1] == 'o'
       s[i] = '.'
     elsif s[i] == 'o'
      s[i-1] = '.'
     end
  else
    if s[i] == 'o'
      s[i-1] = '.'
      s[i+1] = '.'
    end
  end
end

hc = 0
a = []
N.times do |i|
  if s[i] == '?'
    hc += 1
    a << [i-(hc - 1), hc] if i == (N-1)
  else
    next if hc == 0
    a << [i-1-(hc - 1), hc]
    hc = 0
  end
end

r = K - s.count('o')
mr = 0
a.each do |_a, b|
  mr += b
end

if mr == r
  a.each do |a, b|
    next if b.even?
    b.times do |i|
      if i.even?
        s[a+i] = 'o'
      else
        s[a+i] = '.'
      end
    end
  end
end

puts s
