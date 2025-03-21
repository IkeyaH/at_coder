N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

total = A.sum

if total <= M
  puts 'infinite'
  exit
end

ans = 0
sum = 0

while true
  ni = A.bsearch_index { |x| x > ans }
  nv = A[ni]
  if sum + ((N - ni) * (nv - ans)) < M
    sum += ((N - ni) * (nv - ans))
    ans = nv
  else
    remain = M - sum
    ans += remain / (N - ni)
    break
  end
end

puts ans

