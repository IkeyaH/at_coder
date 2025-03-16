# どの結果にも矛盾しない、というところをよく考える
# 鍵の組み合わせは最大2**15 = 32768
# テストは100以下なので、32768 * 100 = 3276800 = 3.2768 * 10^6 となり、
# おそらく鍵のパターンごと、全てのテストを確認して矛盾がなければcountを増やす、という処理でいけそう。
# (1 << N).times
# bitに慣れる

def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M, K = gets.split.map(&:to_i)
as = Array.new(M, 0)
r = []

M.times do |i|
  arr = gets.chomp.split(' ')
  r << arr[-1]
  ta = arr[1..(arr[0].to_i)]
  ta.each do |a_|
    a = a_.to_i - 1
    as[i] |= 1 << a
  end
end

ans = 0
# ここが1<<Nで良い理由
# そうか、bitは2と親和性が高いので、1 << N とすることで、の一個前までとなるが、
# これは2^(N-1)と等しくなるわけだ。
(1 << N).times do |s|
  ok = true
  M.times do |i|
    num = popcount_kernighan(as[i] & s)
    ok = false if ((num >= K) != (r[i] == 'o'))
  end
  ans += 1 if ok
end
