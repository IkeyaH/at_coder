N = gets.to_i
Card = Struct.new(:attack, :cost)
cards = []

N.times do |i|
  a, c = gets.split.map(&:to_i)
  cards << [Card.new(a, c), i+1]
end

sorted_cards = cards.sort { |a, b| b[0].attack <=> a[0].attack }

bc = sorted_cards[0][0]
bi = sorted_cards[0][1]
remain = [bi]
1.upto(N-1).each do |i|
  tac = sorted_cards[i][0]
  tai = sorted_cards[i][1]
  if tac.attack >= bc.attack || tac.cost < bc.cost
    bc = tac
    remain << tai
  end
end

puts remain.length
puts remain.sort.join(' ')
