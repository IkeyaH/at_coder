N = gets.to_i

str_hash = Hash.new(0)

N.times do
  s = gets.chomp
  s_reverse = s.reverse
  if str_hash[s] != 0 || str_hash[s_reverse] != 0
    if str_hash[s] != 0
      str_hash[s] = str_hash[s] + 1
    else
      str_hash[s_reverse] = str_hash[s_reverse] += 1
    end
  else
    str_hash[s] = str_hash[s] + 1
  end
end

puts str_hash.size
