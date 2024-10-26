# !!
# for を 3重にすればいけるが、Yの範囲が 1000 <= Y <= 2 * 10^7 と大きい
# Nも 1 以上 2000 以下 と多く、O(n^3)は厳しい
# 実行時間制限: 2 sec / メモリ制限: 256 MB

# 解説見ながら
# ちなみに、以前にもおんなじような問題みたことある。忘れてるしなんとなく解いて終了してた。
# おもしろい

n, y = gets.chomp.split(' ').map(&:to_i)

res10000 = -1
res5000 = -1
res1000 = -1

for i in 0..n do
  for j in 0..(n - i) do
    k = n - i - j
    total = 10000 * i + 5000 * j + 1000 * k
    if total == y
      res10000 = i
      res5000 = j
      res1000 = k
    end
  end
end

puts res10000.to_s + ' ' + res5000.to_s + ' ' + res1000.to_s
