N, K = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)

$ans = []

def f(arr)
  if arr.size == N
    s = arr.sum
    $ans << arr.join(' ') if s % K == 0
    return
  end

  i = arr.size
  R[i].times do |x|
    na = arr.dup
    na << x+1
    f(na)
  end
end

f([])

puts $ans
