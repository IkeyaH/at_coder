n = gets.chomp.to_i

l_hand = []
r_hand = []

n.times do
  kenban, hand = gets.chomp.split(' ')
  hand == 'L' ? l_hand << kenban.to_i : r_hand << kenban.to_i
end

all_distance = 0

before_l = 0
before_r = 0

l_hand.each_with_index do |l, i|
  if i != 0
    all_distance += (before_l - l).abs
  end
  before_l = l
end

r_hand.each_with_index do |r, i|
  if i != 0
    all_distance += (before_r - r).abs
  end
  before_r = r
end

puts all_distance
