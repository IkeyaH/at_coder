N = gets.to_i
cards = Array.new(N)
N.times do |i|
  a, c = gets.split.map(&:to_i)
  cards[i] = [a, c, i + 1]
end

# sort_byについて確認！
sc = cards.sort_by do |a, c, i|
  [-a, -c, i]
end

now = sc[0]
ans = [now[2]]

for i in 1...N do
  if now[0] == sc[i][0]
    now = sc[i]
    ans << now[2]
  else
    if now[1] < sc[i][1]
      # 特になし
    else
      now = sc[i]
      ans << now[2]
    end
  end
end

puts ans.length
puts ans.sort.join(' ')
