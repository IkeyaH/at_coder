n, k = gets.chomp.split(' ').map(&:to_i)
str = gets.chomp.split('')

count = 0
one_length = []
one_index = []

str.each_with_index do |s, i|
  if i == str.length - 1 && s == '1'
    count += 1
    one_length << count
    if count == 1
      one_index << i
    end
  elsif count == 0 && s == '1'
    one_index << i
    count += 1
  elsif count > 0 && s == '1'
    count += 1
  elsif count > 0 && s == '0'
    one_length << count
    count = 0
  end
end

s = str.join
from = one_index[k - 1]
to = from + one_length[k - 1]
s.slice!(from...to)

in_s = '1' * one_length[k - 1]


puts s.insert(one_index[k - 2], in_s)
