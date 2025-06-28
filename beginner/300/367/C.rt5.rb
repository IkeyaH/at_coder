# 10mちょいくらい
N, K = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)
ANS = []

def func(arr)
  l = arr.length
  if l == N
    ANS << arr if arr.sum % K == 0
    return
  end

  R[l].times do |i|
    na = arr.dup
    na << i + 1
    func(na)
  end
end

func([])

ANS.each do |a|
  puts a.join(' ')
end
