# TLE
N, M = gets.split.map(&:to_i)
C = gets.split.map(&:to_i) # 入園料
A = Array.new(M) { Array.new } # 動物がどの動物園にいるか

M.times do |i|
  inp = gets.split.map(&:to_i)
  k = inp[0] # 動物iが幾つの動物園にいるか
  arr = inp[1..k] # 動物と動物園の対応配列
  f_arr = arr.map { |a| a -= 1 }
  A[i] = f_arr
end

p3 = Array.new(N+1, 1)
N.times { |i| p3[i+1] = p3[i]*3 }

ans = Float::INFINITY
p3[N].times do |s|
  t = Array.new(N)
  N.times { |i| t[i] = s/p3[i]%3 }
  cost = 0
  N.times { |i| cost += t[i]*C[i] }
  M.times do |j|
    cnt = 0
    ta = A[j]
    ta.each do |a|
      cnt += t[a]
    end
    cost = Float::INFINITY if cnt < 2
  end
  ans = [cost, ans].min
end

puts ans
