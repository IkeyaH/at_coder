A,B,C,D = gets.chomp.split(' ').map(&:to_i)

# alice = (A..B).map { |n| n.to_i }
# bob = (C..D).map { |n| n.to_i }

# p  (alice & bob).length != 0 ? (alice & bob).length - 1 : 0

# A, C の大きい方 ~ B, D の小さい方を出せばいい。

low_num = [A, C].max
high_num = [B, D].min

if high_num <= low_num
  puts 0
else
  puts high_num - low_num
end
