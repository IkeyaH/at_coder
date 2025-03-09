# ビットっぽさはあるがよくわからない。
# やっぱりビットだが、どうすれば良いか。

# OKのものの中に、正しいものが何個入っているか？
# 必要な鍵の個数&をとると、幾つ正しい鍵かがわかる。
# ビット演算子について

def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M, K = gets.split.map(&:to_i)
as = Array.new(M, 0) # どの鍵を利用したかの配列（bitにした時、1となっている鍵を利用した）
r = [] # 実験resultの配列

# asには、i回目の実験でどの鍵を利用したか、を記録していく
M.times do |i|
  arr = gets.chomp.split(' ')
  r << arr[-1]
  t_a = arr[1..(arr[0].to_i)]
  t_a.each do |a_|
    a = a_.to_i - 1
    as[i] |= 1 << a
  end
end

ans = 0
# 全ての鍵の組み合わせについて、全探索
(1 << N).times do |s|
  ok = true
  M.times do |i|
    # それぞれの実験で利用した鍵と、今回の鍵の&を取り、
    # 利用した鍵の本数がK個以上かつ結果がoであれば、その鍵の組み合わせは矛盾しない。となる。
    # 逆に、本数は足りているが開かなかった、というのは矛盾する。
    # それを、全ての実験結果で毎回試しているので、「どの」結果にも矛盾しない、と言える。なるほど。
    num = popcount_kernighan(as[i] & s)
    ok = false if ((num >= K) != (r[i] == 'o'))
  end

  ans += 1 if ok
end

puts ans
