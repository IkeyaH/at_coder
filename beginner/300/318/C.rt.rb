N,D,P = gets.split.map(&:to_i)
F = gets.split.map(&:to_i).sort

cum = Array.new(N+1, 0)

for i in 0...N do
  cum[i + 1] = cum[i] + F[i]
end

ans = Float::INFINITY
# チケットを利用した場合の料金と、しなかった場合の料金を比較していく
for i in (0..(10**10)) do
  # チケットを利用しない日数
  r = [0,N - i*D].max
  now = cum[r] + P*i
  ans = [now, ans].min
  break if r == 0
end

puts ans
