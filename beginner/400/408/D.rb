A = []
def solve
  n = gets.to_i
  s = gets.chomp
  r1 = Array.new(n+1, 0)
  (n-1).downto(0).each do |i|
    r1[i] = r1[i+1]
    r1[i] += 1 if s[i] == '1'
  end

  ans = Float::INFINITY
  l0 = 0
  best, l01 = 0, 0
  1.upto(n).each do |r|
    l0 += 1 if s[r-1] == '0'
    s[r-1] == '0' ? l01 -= 1 : l01 += 1
    best = [best, l01].min
    now = r1[r] + l0 + best
    ans = [ans, now].min
  end
  A << ans
end

T = gets.to_i
T.times do
  solve
end

puts A
