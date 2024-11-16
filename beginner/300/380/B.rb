str = gets.chomp.split('|')
str.shift

result = []
rs = ''

str.each do |s|
  result << s.length
end

result.each do |r|
  rs = rs + r.to_s + ' '
end

puts rs
