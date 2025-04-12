N, K = gets.split.map(&:to_i)
T = 10**9

a = []
(N+1).times do |i|
  if i < K
    a << 1
  elsif i == K
    a << K
  else
    n = (a[i-1]*2) - a[i-K-1]
    a << n % T
  end
end

puts a[-1]
