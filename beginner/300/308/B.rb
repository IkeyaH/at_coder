# todo: テストケース追加時見直し
N, M = gets.chomp.split(' ').map(&:to_i)
eats = gets.chomp.split(' ')
dishes = gets.chomp.split(' ')
prices = gets.chomp.split(' ').map(&:to_i)

sum = 0

eats.each do |e|
  index = dishes.index(e)
  if index != nil
    sum += prices[index + 1]
  else
    sum += prices[0]
  end
end

puts sum
