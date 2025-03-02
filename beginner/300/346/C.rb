N, K = gets.split.map(&:to_i)
ta = gets.split.map(&:to_i).tally
sum = ((K + 1) * K ) / 2

ta.each do |t|
  sum -= t[0] if t[0] <= K
end

puts sum
