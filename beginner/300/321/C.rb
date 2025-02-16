# bit全探索
# 0..9までの数字を利用する。
# 同じ数字は利用できないため、最大でも9876543210の10桁 -> 2**10 = 1024

K = gets.to_i

nums = [*0..9]
n = []

(1...(1 << 10)).each do |bit|
  subset = []
  10.times do |i|
    if bit[i] == 1
      subset << nums[i]
    end
  end
  sort_sub = subset.sort{|a, b| b <=>  a}
  n.push(sort_sub.join.to_i)
end

puts n.drop(1).sort[K - 1]
