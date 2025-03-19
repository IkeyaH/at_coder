N = gets.to_i
cards = []
N.times do |i|
  a, c = gets.split.map(&:to_i)
  cards << [a, c, i+1]
end

sorted_cards = cards.sort {|a, b| b <=> a}

ans = [sorted_cards[0][2]]
na = sorted_cards[0][0]
nc = sorted_cards[0][1]

(N-1).times do |i|
  ta, tc, ti = sorted_cards[i + 1]
  if na > ta && nc < tc
  else
    ans << ti
    na = ta
    nc = tc
  end
end

puts ans.length
puts ans.sort.join(' ')
