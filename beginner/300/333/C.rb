N = gets.to_i

repu = []
for i in 1..12 do
  repu << ('1' * i).to_i
end

count = 0
ans = 0
for i in 0...12 do
  for j in 0..i do
    for k in 0..j do
      count += 1
      if count == N
        ans = repu[i] + repu[j] + repu[k]
        break
      end
    end
    break if ans != 0
  end
  break if ans != 0
end

puts ans
