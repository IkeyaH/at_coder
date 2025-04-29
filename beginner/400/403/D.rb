
def solve(a)
  n = a.size
  dp = Array.new(n+1) { Array.new(2, 0) }
  n.times do |i|
    dp[i+1][1] = [dp[i][0], dp[i][1]].max
    dp[i+1][0] = dp[i][1] + a[i]
  end
  mx = [dp[n][0], dp[n][1]].max
  sm = a.sum
  return sm - mx
end



N, D = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
M = 10**6 + 3
cnt = Array.new(M, 0)
nums.each do |n|
  cnt[n] += 1
end

if D == 0
  tn = nums.tally
  ans = 0
  tn.each do |num, cnt|
    ans += cnt-1 if cnt > 1
  end
  puts ans
  exit
end

ans = 0
D.times do |si|
  a = [] # 関係するもののみを格納していく
  (si...M).step(D) do |i|
    a << cnt[i]
  end
  ans += solve(a)
end

puts ans
