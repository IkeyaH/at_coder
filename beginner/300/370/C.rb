s = gets.chomp.split('')
t = gets.chomp.split('')


x = []
n = s.length


n.times do
  e_flag = false
  count = 0
  for i in (0..(n-1)) do
    if s[i] <= t[i]
      count += 1
      next
    else
      s[i] = t[i]
      x << s.join
      e_flag = true
    end
    break if e_flag == true
  end
  if count == s.length
    e_flag_2 = false
    for i in (1..n) do
      if s[-i] < t[-i]
        s[-i] = t[-i]
        x << s.join
        e_flag_2 = true
      end
      break if e_flag_2 == true
    end
  end
end

puts x.length
puts x
