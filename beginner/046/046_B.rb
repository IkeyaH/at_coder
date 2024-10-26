N, K = gets.chomp.split(' ').map(&:to_i)

puts result = K * ( K - 1 ).pow( N - 1 )
