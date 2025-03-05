N = gets.to_i
a_arr = gets.split.map(&:to_i)

ans = [a_arr[0]]

for i in 1...N do
  ans << a_arr[i]
  while true
    len = ans.length
    break if len == 1
    break if ans[-1] != ans[-2]
    add = ans[-1] + 1
    ans.pop(2)
    ans.push(add)
  end
end

puts ans.length
