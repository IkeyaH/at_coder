N, K = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)

A = []

def f(arr)
  as = arr.size
  if as == N
    A << arr.join(' ') if arr.sum % K == 0
    return
  end

  R[as].times do |i|
    na = arr.dup
    na << i + 1
    f(na)
  end
end

f([])

puts A
