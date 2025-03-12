s = gets.chomp.split('')
ta = s.tally

ans = (s.length * (s.length - 1)) / 2


flag = false
ta.each do |t|
  if t[1] > 1
    flag = true
    ans -= (t[1] * (t[1] - 1)) / 2
  end
end

ans += 1 if flag
puts ans
