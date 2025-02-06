N, D, P = gets.split.map(&:to_i)
f_arr = gets.split.map(&:to_i).sort

s = Array.new(N+1,0)
for i in 0...N do
  s[i+1] = s[i] + f_arr[i]
end

ans = Float::INFINITY

for i in 0..(10**10) do
  # チケット利用日以外の日数
  r = [0, N-i*D].max
  now = s[r] + P*i
  ans = [ans, now].min
  break if r == 0
end

puts ans
