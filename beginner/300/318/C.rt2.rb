# https://atcoder.jp/contests/abc318/tasks/abc318_c

N, D, P = gets.split.map(&:to_i)
F = gets.split.map(&:to_i).sort
cum = Array.new(N + 1, 0)

for i in 1..N do
  cum[i] = cum[i - 1] + F[i - 1]
end

ans = Float::INFINITY

# iがチケットの数
for i in 0..(10**10) do
  nml = [0, N - D*i].max
  now = cum[nml] + P*i
  ans = [ans, now].min
  break if nml == 0
end

puts ans
