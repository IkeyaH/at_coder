S, T = gets.chomp.split(' ')

# 何文字に分割するか、でループし、
# その中で何文字目をみるか、で再度ループすれば良い
len = S.length
ok = false

for i in 1...len do
  for j in 1..i do
    ind = j - 1
    arr = []
    while true
      arr << S[ind]
      ind += i
      break if ind >= len
    end
    ok = true if arr.join == T
  end
  break if ok
end

puts ok ? 'Yes' : 'No'
