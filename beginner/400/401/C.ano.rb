# k以下であれば1なので、kからループ処理を始めれば良い

n, k = gets.split.map(&:to_i)
a = Array.new(n+1, 1)
a[k] = k
t = 10**9

if n < k
  puts 1
  exit
end

s = k
(k+1).upto(n).each do |i|
  s -= a[i-1-k]
  s += a[i-1]
  s = s % t
  a[i] = s
end
puts a[-1]
