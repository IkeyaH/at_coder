n = gets.to_i
toys = gets.chomp.split(' ').map(&:to_i).sort!
boxes = gets.chomp.split(' ').map(&:to_i).sort!

best_position = nil

ok = true
boxes.each_with_index do |b, i|
  if b < toys[i]
    ok = false
  end

  if best_position == nil && b >= toys[i + 1]
    best_position = toys[i]
  end

  if b < toys[i + 1]
    best_position = nil
  end
end

if ok == true
  if best_position != nil
    puts best_position
  else
    puts toys[-1]
  end
else
  puts -1
end
