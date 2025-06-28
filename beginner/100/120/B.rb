A, B, K = gets.split.map(&:to_i)
min = [A, B].min
arr = []
1.upto(min).each do |i|
  if A % i == 0 && B % i == 0
    arr << i
  end
end

arr.reverse!
puts arr[K-1]
