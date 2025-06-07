T = gets.to_i

ans = []
T.times do |i|
  n = gets.to_i
  str = gets.chomp
  len = str.length

  si = nil
  ss = nil
  (len-1).times do |n|
    s1 = str[n]
    s2 = str[n+1]

    if s1 > s2
      si = n
      ss = s1
      break
    end
  end

  if si == nil
    ans << str
    next
  end

  (si+1).upto(len) do |m|
    if m == len
      tmp = str[(si+1)...m]
      tmp = tmp + ss
      str[si...m] = tmp
      ans << str
      break
    end

    if ss < str[m]
      tmp = str[(si+1)...m]
      tmp = tmp + ss
      str[si...m] = tmp
      ans << str
      break
    end
  end
end

puts ans
