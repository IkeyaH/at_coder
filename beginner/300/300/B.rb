# https://atcoder.jp/contests/abc300/tasks/abc300_b

# うーん、どうやら下ではNGが出てしまうよう。
# 正直どこがダメかわかっていない。
# H, W = gets.chomp.split(' ').map(&:to_i)
# map_a = []
# map_b = []

# H.times do
#   map_a << gets.chomp.split('')
# end

# H.times do
#   map_b << gets.chomp.split('')
# end

# ok = false
# for i in 0...H do
#   tmap_a = map_a.dup
  # i.times do
  #   ta = tmap_a[0]
  #   tmap_a.shift
  #   tmap_a << ta
  # end
  # ここでの操作が違う。temp_aは最初のものを利用しているが、少しずつ変わっている
#   for j in 0...W do
#     j.times do
#       tmap_a.each_with_index do |t, i|
#         t1 = tmap_a[i][0]
#         tmap_a[i].shift
#         tmap_a[i] << t1
#       end
#     end
#     pp tmap_a
#     if tmap_a == map_b
#       ok = true
#     end
#   end
# end

# puts ok ? 'Yes' : 'No'

# 修正案

H, W = gets.chomp.split(' ').map(&:to_i)
map_a = []
map_b = []

H.times do
  map_a << gets.chomp.split('')
end

H.times do
  map_b << gets.chomp.split('')
end

ok = false

for i in 0...H do
  tmap_a = map_a.dup
  # i.times do
  #   # shiftは削除されるものを返す
  #   tmap_a.push(tmap_a.shift)
  # end
  i.times do
    ta = tmap_a[0]
    tmap_a.shift
    tmap_a << ta
  end

  for j in 0...W do
    shifted_map = tmap_a.map { |a| a.rotate(j) }

    if shifted_map == map_b
      ok = true
      break
    end
  end
  break if ok
end

puts ok ? 'Yes' : 'No'
