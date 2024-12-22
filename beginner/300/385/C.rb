# N = gets.to_i
# heights = gets.chomp.split(' ').map(&:to_i)

# same_h = Array.new(10) {Array.new}

# heights.each_with_index do |h, i|
#   same_h[h] << i
# end

# max = 1

# same_h.each do |sh|
#   if sh.length > 0

#   end
# end

# puts max

# 高さごと、ではなく「間隔ごと」にグループ化してしまう。

# N = gets.to_i
# heights = gets.chomp.split(' ').map(&:to_i)

# def max_same_height(arr)
#   return 0 if arr.empty?
#   return 1 if arr.length == 1

#   max_count = 1
#   current_count = 1

#   (1...(arr.length)).each do |i|
#     if arr[i - 1] == arr[i]
#       current_count += 1
#     else
#       current_count = 1
#     end
#     max_count = current_count if max_count < current_count
#   end
# end

# result = 1

# # kは間隔を表す
# (1...N).each do |k|
#   k.times do |start|
#     index_a = (start...N).step(k).to_a
#     h_a = index_a.map { |i| heights[i] }

#     # 現在の高さと連続カウント
#     current_height = nil
#     current_count = 0

#     h_a.each_with_index do |h, i|
#       if i == 0
#         current_height = h_a[0]
#         current_count += 1
#       else
#         if current_height == h_a[i]
#           current_count += 1
#         else
#           current_height = h_a[i]
#           current_count = 1
#         end
#         result = current_count if result < current_count
#       end
#     end
#   end
# end

# puts result

# 計算量を減らしたver
N = gets.to_i
heights = gets.chomp.split(' ').map(&:to_i)

result = 1

# kは間隔
(1...N).each do |k|
  (0...k).each do |start|
    current_count = 1
    prev_height = heights[start]

    (start + k).step(N - 1, k) do |i|
      if prev_height == heights[i]
        current_count += 1
        result = [result, current_count].max
      else
        current_count = 1
      end
      prev_height = heights[i]
    end
  end
end

puts result
