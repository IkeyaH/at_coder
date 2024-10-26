# H, W = gets.chomp.split(' ').map(&:to_i)
# now_h, now_w = gets.chomp.split(' ').map(&:to_i)

# grid = []
# H.times do
#   grid << gets.chomp.split('')
# end

# X = gets.chomp.split('')

# up = [-1, 0]
# down = [1, 0]
# right = [0, 1]
# left = [0, -1]

# X.each do |x|
#   case x
#   when 'U'
#     target = [now_h - 1, now_w]
#     if target[0] >= 1 && grid[(target[0] - 1)][target[1] - 1] == '.'
#       now_h = target[0]
#       now_w = target[1]
#     end
#   when 'D'
#     target = [now_h + 1, now_w]
#     if target[0] <= H && grid[(target[0] - 1)][target[1] - 1] == '.'
#       now_h = target[0]
#       now_w = target[1]
#     end
#   when 'R'
#     target = [now_h, now_w + 1]
#     if target[1] <= W && grid[(target[0] - 1)][target[1] - 1] == '.'
#       now_h = target[0]
#       now_w = target[1]
#     end
#   when 'L'
#     target = [now_h, now_w - 1]
#     if target[1] >= 1 && grid[(target[0] - 1)][target[1] - 1] == '.'
#       now_h = target[0]
#       now_w = target[1]
#     end
#   end
# end

# puts now_h.to_s + ' ' + now_w.to_s

# 判定をまとめてみようの会
H, W = gets.chomp.split.map(&:to_i)
now_h, now_w = gets.chomp.split.map(&:to_i)

grid = Array.new(H) { gets.chomp.chars }

X = gets.chomp.chars

directions = {
  'U' => [-1, 0],
  'D' => [1, 0],
  'R' => [0, 1],
  'L' => [0, -1]
}

X.each do |move|
  dh, dw = directions[move]
  new_h, new_w = now_h + dh, now_w + dw

  if new_h.between?(1,H) && new_w.between?(1,W) && grid[new_h-1][new_w-1] == '.'
    now_h, now_w = new_h, new_w
  end
end

puts "#{now_h} #{now_w}"
