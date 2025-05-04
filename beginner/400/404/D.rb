# 公式解説動画も良いが、こちらのが素直な実装な気がする
# あと、rubyに寄った感じだからそう実装する、というのもあるかもしれない
N, M = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
ZOO = Array.new(N) { Array.new }
M.times do |i|
  _, *a = gets.split.map(&:to_i)
  a.each { |z| ZOO[z-1] << i }
end

ans = Float::INFINITY

(3**N).times do |i|
  cost = 0
  animals = Array.new(M, 0)
  tri = i.digits(3) # すごい便利
  tri.each_with_index do |tr, j|
    next if tr == 0
    cost += C[j]*tr
    zoo = ZOO[j]
    zoo.each { |a| animals[a] += tr }
  end
  next if animals.any? { _1 < 2 } || cost >= ans
  ans = cost
end

puts ans
