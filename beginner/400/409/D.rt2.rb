N = gets.to_i

ans = []

N.times do
  n = gets.to_i
  s = gets.chomp
  len = s.length

  ss = nil
  si = nil
  (len-1) .times do |i|
    ts = s[i]
    ns = s[i+1]
    if ts > ns
      ss = ts
      si = i
      break
    end
  end

  if ss.nil?
    ans << s
    next
  end

  (si+1).upto(len).each do |j|
    if j == len || ss < s[j]
      tmp = s[(si+1)..(j-1)]
      tmp += ss
      s[si..(j-1)] = tmp
      ans << s
      break
    end
  end
end

puts ans
