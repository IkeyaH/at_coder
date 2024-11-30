N, X = gets.chomp.split(' ').map(&:to_i)
points = gets.chomp.split(' ').map(&:to_i).sort

result = 0

if points[0...(points.length - 1)].sum >= X
  result = 0
elsif X - points[1...(points.length - 1)].sum <= 100
  if X - points[1...(points.length - 1)].sum <= points[-1]
    result = X - points[1...(points.length - 1)].sum
  else
    result = -1
  end
else
  result = -1
end

p result
