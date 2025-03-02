sa = gets.chomp.split('')
down_ta = gets.chomp.downcase.split('')

ta1 = down_ta[0]
ta2 = down_ta[1]
ta3 = down_ta[2]

hash = {}

sa.each_with_index do |s, i|
  if s == ta1 || s == ta2 || s == ta3
    if hash.key?(s)
      hash[s] << i
    else
      hash[s] = [i]
    end
  end
end

ok = false
if ta3 == 'x'
  if hash.key?(ta1) && hash.key?(ta2)
    ok = true if hash[ta1][0] < hash[ta2][-1]
  end
else
  if hash.key?(ta1) && hash.key?(ta2) && hash.key?(ta3)
    ta1_i = hash[ta1][0]
    ta3_i = hash[ta3][-1]
    hash[ta2].each do |t2|
      ok = true if ta1_i < t2 && t2 < ta3_i
    end
  end
end

puts ok ? 'Yes' : 'No'

