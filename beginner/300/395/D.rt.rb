# 鳩: p
# 巣: h
# 袋: b
# 3のクエリの時、pからhを特定したい
# 1のクエリの時、pからhを特定し、次のhにしたい。
# そこまではわかる
# 2の処理: a,b h-aの鳩たちとh-bの鳩たちを全て入れ替える
# → 配列の前入れ替えをすればできるが、これがTLEになる。
# 袋bに入っていると考える。b起点で考えると、
# p -> b の特定（鳩から袋）
# b -> h の特定（袋から巣）
# h -> b の特定（巣から袋）

N, Q = gets.split.map(&:to_i)

p2b = Array.new(N) { |i| i }
b2h = Array.new(N) { |i| i }
h2b = Array.new(N) { |i| i }

ans = []

Q.times do
  q = gets.split.map(&:to_i)
  if q[0] == 1
    a, b = q[1] -= 1, q[2] -= 1
    p2b[a] = h2b[b]
  elsif q[0] == 2
    a, b = q[1] -= 1, q[2] -= 1
    h2b[a], h2b[b] = h2b[b], h2b[a]
    b2h[h2b[a]] = a
    b2h[h2b[b]] = b
  else
    a = q[1] -= 1
    ans << b2h[p2b[a]] + 1
  end
end

puts ans
