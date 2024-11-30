N, D = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp.split('')

D.times do
  for i in 0...N do
    if s[(N - 1) - i] == '@'
      s[(N - 1) - i] = '.'
      break
    end
  end
end

puts s.join
