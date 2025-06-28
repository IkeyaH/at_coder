num = Set.new

9.times do |i|
  9.times do |j|
    x, y = i+1, j+1
    num.add(x*y)
  end
end

N = gets.to_i
if num.include?(N)
  puts 'Yes'
else
  puts 'No'
end

