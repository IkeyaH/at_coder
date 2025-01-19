# https://atcoder.jp/contests/abc308/tasks/abc308_c

N = gets.to_i
persent_hash = Hash.new { |h, k| h[k] = [] }
persents = []


N.times do |i|
  a, b = gets.split(' ').map(&:to_f)
  persent = a / (a + b)
  persent_hash[persent].push(i + 1)
  persents.push(persent)
end

sorted_persents = persents.uniq.sort { |a,b| b <=> a }

re = []
sorted_persents.each do |i|
  re.concat(persent_hash[i])  # 修正: 配列をそのまま結合
end

puts re.join(' ')
