n = gets.to_i
ans = []

10.downto(0) do |i|
  while true
   if n >= 3**i
    n -= 3**i
    ans << i
   else
    break
   end
  end
end

puts ans.length
puts ans.join(' ')
