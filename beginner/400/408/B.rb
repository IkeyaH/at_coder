N = gets.to_i
A = gets.split.map(&:to_i)

ans = A.sort.uniq
puts ans.length
puts ans.join(' ')
