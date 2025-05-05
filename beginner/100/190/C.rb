tmp = gets.chomp.split(' ').map(&:to_i)
n, m = tmp[0], tmp[1]

joken = []

m.times do
  tmp2 = gets.chomp.split(' ').map(&:to_i)
  joken << tmp2
end

# p joken

person_num = gets.chomp.to_i
person_ball = []

person_num.times do
  tmp3 = gets.chomp.split(' ').map(&:to_i)
  person_ball << tmp3
end

# dish_nums_arr = []

max = 0

(1 << person_num).times do |bit|
  dish_nums = []
  count = 0
  person_num.times do |i|
    if bit[i] == 0
      dish_nums << person_ball[i][0]
    else
      dish_nums << person_ball[i][1]
    end
  end
  joken.each do |jkn|
    if dish_nums.include?(jkn[0]) && dish_nums.include?(jkn[1])
      count += 1
    end
  end
  if max < count
    max = count
  end
  # dish_nums_arr << dish_nums.sort
end

puts max
