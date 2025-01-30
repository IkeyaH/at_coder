# https://atcoder.jp/contests/abc311/tasks/abc311_c

N = gets.to_i
targets = gets.chomp.split(' ').map(&:to_i)

# どこからそこに来たか、を記すもの
from = Array.new(N + 1, 0)
reco = []
now = 0
result = nil
(N + 1).times do |i|
  target = targets[now]
  reco.push(target)
  if from[target] == 0
    from[target] = now + 1
    now = target - 1
  else
    f = reco.find_index(target)
    result = reco.slice(f...i)
    break
  end
end

puts result.length
puts result.join(' ')
