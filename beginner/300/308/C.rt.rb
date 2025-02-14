N =  gets.to_i

coin_rate = (1..N).map do |i|
  succsess_rate = gets.split.map(&:to_r)
  [(succsess_rate[0] / (succsess_rate[0] + succsess_rate[1])), i]
end

sorted_rate = coin_rate.sort_by do |a, b|
  [-a, b]
end

puts sorted_rate.map(&:last).join(' ')
