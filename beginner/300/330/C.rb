D = gets.to_i
# LOOKME

# 2乗で超えるギリギリ ... √D (+ 1) -> ちょうど超える時も考慮する必要あり。
# ただ、x,yについて全ては試せないので + αの工夫をする。
# x^2 + y^2 ≤ D
# y^2 ≤ D - x^2
# y ≤ √(D - x^2) （だいたい）

ans = D
y = 2e6
for x in 0..(2e6) do
  while (y > 0 && x*x + y*y > D) do
    y -= 1
  end
  ans = [ans, (x*x + y*y - D).abs].min
  ans = [ans, (x*x + (y+1)*(y+1) - D).abs].min
end

puts ans.to_i
