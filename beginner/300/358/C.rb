# popcount（2新数にした際、1がいつくあるかカウントする）
def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M = gets.split.map(&:to_i)
st = []
N.times { st << gets.chomp }


ans = N
for bit in (0...(1<<N)) do
  ok = true
  for i in 0...M do
    can = false
    for j in 0...N do
      if (bit>>j&1 == 1)
        can = true if st[j][i] == 'o'
      end
    end
    ok = false if !can
  end
  ans = [ans, popcount_kernighan(bit)].min if ok
end

puts ans
