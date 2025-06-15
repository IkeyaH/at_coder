N, Q = gets.split.map(&:to_i)
numbers = Array.new(N)
N.times do |i|
  numbers[i] = i+1
end
ans = []
rc = 0

Q.times do
  query = gets.split.map(&:to_i)
  case query[0]
  when 1
    qi = query[1]
    ti = (rc + qi - 1) % N
    numbers[ti] = query[2]
  when 2
    qi = query[1]
    ti = (rc + qi - 1) % N
    ans << numbers[ti]
  when 3
    rc = (rc + query[1]) % N
  end
end

puts ans
