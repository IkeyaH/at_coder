a, b, c = gets.chomp.split(' ')


kyodai_pattarn = [
  ['A', 'B', 'C'],
  ['A', 'C', 'B'],
  ['B', 'A', 'C'],
  ['B', 'C', 'A'],
  ['C', 'A', 'B'],
  ['C', 'B', 'A'],
]

kari_1 = []
kari_2 = []
result = []

if a == '<'
  kari_1 << kyodai_pattarn[2]
  kari_1 << kyodai_pattarn[3]
  kari_1 << kyodai_pattarn[5]
else
  kari_1 << kyodai_pattarn[0]
  kari_1 << kyodai_pattarn[1]
  kari_1 << kyodai_pattarn[4]
end

kari_1.each do |k1_arr|
  if b == '<'
    kari_2 << k1_arr if k1_arr.index('A') > k1_arr.index('C')
  else
    kari_2 << k1_arr if k1_arr.index('A') < k1_arr.index('C')
  end
end

kari_2.each do |k2_arr|
  if c == '<'
    result << k2_arr if k2_arr.index('B') > k2_arr.index('C')
  else
    result << k2_arr if k2_arr.index('B') < k2_arr.index('C')
  end
end

puts result[0][1]
