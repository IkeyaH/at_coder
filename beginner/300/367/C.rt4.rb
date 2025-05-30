N, K = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)

A = []
def f(a)
  len = a.length

  if len == N
    A << a.join(' ') if a.sum % K == 0
    return
  end
  # na = a.dup
  # ここでdupすると、下の繰り返しで共有される
  # = 要素数がNを超え、nilアクセスとなる
  R[len].times do |i|
    na = a.dup.push(i+1)
    f(na)
  end
end

f([])

puts ans
