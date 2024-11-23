H, W = gets.chomp.split(' ').map(&:to_i)
square = []
H.times do
  square << gets.chomp.split('')
end

# 八方向を表す配列を用意し、その分インクリメントしていく。という形。
