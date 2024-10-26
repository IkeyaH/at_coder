ax1, ay1, az1, ax2, ay2, az2 = gets.chomp.split(' ').map(&:to_i)
bx1, by1, bz1, bx2, by2, bz2 = gets.chomp.split(' ').map(&:to_i)

if ax2 <= bx1  || bx2 <= ax1 || ay2 <= by1 || by2 <= ay1 || az2 <= bz1  || bz2 <= az1
  puts 'No'
else
  puts 'Yes'
end

# TODO: それぞれの辺を比べるように関数を作り、それぞれの値を入れてあげるとわかりやすい。

