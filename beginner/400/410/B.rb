N, Q = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)

box = Array.new(N, 0)
ans = Array.new(Q)

X.each_with_index do |x, k|
  if x == 0
    min = box.min
    ind = nil
    box.each_with_index do |a, i|
      if a == min
        ind = i
        break
      end
    end
    box[ind] += 1
    ans[k] = ind + 1
  else
    box[x-1] += 1
    ans[k] = x
  end
end

puts ans.join(' ')
