N = gets.to_i

# 再帰関数を思い出す。
ah = {}


def calc_en(n, h)
  return 0 if n <= 1
  return h[n] if h.key?(n)
  n_1 = n / 2
  n_2 = (n + 1) / 2
  h[n] = n + calc_en(n_1, h) + calc_en(n_2, h)
end

puts calc_en(N, ah)
