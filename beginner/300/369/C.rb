N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
diff = 0
arr = []
N.times do |i|
  l = arr.length
  if l == 0
    ans += 1
    arr << A[i]
  elsif l == 1
    ans += 2
    arr << A[i]
    diff = arr[1] - arr[0]
  else
    t = A[i]
    if t - arr[-1] == diff
      arr << t
      ans += arr.length
    else
      diff = t - arr[-1]
      arr = [arr[-1], t]
      ans += arr.length
    end
  end
end

puts ans
