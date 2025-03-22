ta = gets.split.map(&:to_i).tally

tw = 0
th = 0

ta.each do |t|
  tw += 1 if t[1] >= 2
  th += 1 if t[1] >= 3
end

if tw >= 2 && th >= 1
  puts 'Yes'
else
  puts 'No'
end
