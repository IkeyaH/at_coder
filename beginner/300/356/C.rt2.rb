# この問題は、問題文を正確に理解・腑に落ちた感を得ることが難しい。
# ポイントは、具体的にどの鍵が正しいか、ではなく、
# あくまで開くのに必要な鍵の数と、結果が矛盾しなければ良い。


def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M, K = gets.split.map(&:to_i)
keys = Array.new(M, 0)
results = []

M.times do |i|
  ta = gets.chomp.split(' ')
  results << ta[-1]
  t = ta[1..(ta[0].to_i)]
  t.each do |a_|
    a = a_.to_i - 1
    keys[i] |= 1<<a
  end
end

ans = 0
(1<<N).times do |s|
  ok = true
  M.times do |i|
    num = popcount_kernighan(keys[i] & s)
    ok = false if ((num >= K) != (results[i] == 'o'))
  end

  ans += 1 if ok
end

puts ans
