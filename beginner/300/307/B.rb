N = gets.to_i
strs = []
N.times do
  strs << gets.chomp
end

cons = []

ok = false

(N - 1).times do |i|
  base = strs[i]
  ((N - 1) - i).times do |j|
    str1 = base + strs[(N - 1) - j]
    str2 = strs[(N - 1) - j] + base

    if str1 == str1.reverse || str2 == str2.reverse
      ok = true
      break
    end
  end
  break if ok == true
end

puts ok ? 'Yes' : 'No'
