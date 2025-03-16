N = gets.to_i
A = gets.split.map(&:to_i).sort
base = 10**8
sum = 0
A.each do |a|
  sum += a
end
sum = sum * (N-1)

r = N - 1
for i in 0...N do
  r -= 1 while (r >= 0) && (A[i] + A[r] >= base)
  sum -= ((N-1) - [r, i].max) * base
end

puts sum

# どう考えれば良かったのか？
# r を1ずつ下げていく、という発想までは共通でできた。
# あとは、最後にまとめて引こうとcountを用意したが、そこは微妙だった。
# 単純に、超える個数分を引けば良かった。
# で、その超える個数というのは、rがiと一緒になる or 超える時、rは更新されない。
# よって、rとiのmaxを取れば、rの方が大きければそれを、小さければiの時点からあとの数とできる。
# うーん、悔しい。なるほど。
