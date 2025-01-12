N = gets.chomp.to_i
a_arr = gets.chomp.split(' ').map(&:to_i)

count = 0
first = a_arr[0]
result = 0

a_arr.each do |a|
  if count == 0
    count += 1
    next
  end
  half = a / 2
  next if half < first

  index = a_arr.bsearch_index { |x| x >=  half + 1 }
  result += index

  count += 1
end

puts result


# ary = [2 3 4 4 7 10]
# p ary.reverse

# puts ary.reverse.bsearch_index { |x| x >=   4 }
