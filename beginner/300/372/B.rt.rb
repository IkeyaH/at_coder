n = gets.to_i
ans = []

ns = n.to_s(3).split('').reverse

ns.each_with_index do |s, i|
  s.to_i.times do
    ans << i
  end
end

puts ans.length
puts ans.join(' ')
