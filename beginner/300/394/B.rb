N = gets.to_i
strs = []
N.times do
  str = gets.chomp
  strs << [str.length, str]
end
sorted_strs = strs.sort

ans = ''
sorted_strs.each do |s|
  ans = ans + s[1]
end

puts ans
