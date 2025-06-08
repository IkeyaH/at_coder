T = gets.to_i

ans = []

T.times do
  n = gets.to_i
  str = gets.chomp

  ss = nil
  si = nil
  (n-1).times do |i|
    nos = str[i]
    nes = str[i+1]
    if nos > nes
      ss = nos
      si = i
      break
    end
  end
  if ss == nil
    ans << str
    next
  end

  (si+1).upto(n).each do |i|
    if i == n || ss < str[i]
      tmp = str[si+1...i]
      tmp += ss
      str[si...i] = tmp
      ans << str
      break
    end
  end
end

puts ans
