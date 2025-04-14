# うーん、とはいえ最初のやり方がわかりやすかった気もする。
N, K = gets.split.map(&:to_i)
a = Array.new(N+1, 1)
a[K] = K
base = 10**9

if N < K
  puts 1 
  exit
end

now = K
(K+1).upto(N) do |i|
  now += a[i-1]
  now -= a[i-1-K]
  now %= base
  a[i] = now
end

puts now
