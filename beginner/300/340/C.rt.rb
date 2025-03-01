# 再帰関数 + メモ化
# 一度調査した数字はメモしておき再度調べなくても良い

N = gets.to_i

memo = {}

# 支払額を求める再帰関数
# 最初に付与されたnと、再帰的に取得した数値を合計して返す

def calc_pay(n, m)
  return 0 if n == 1
  return m[n] if m.key?(n)

  ne1 = n / 2
  ne2 = (n + 1) / 2

  r1 = calc_pay(ne1, m)
  r2 = calc_pay(ne2, m)

  s = n + r1 + r2
  m[n] = s
  return s
end

calc_pay(N, memo)

puts memo[N]
