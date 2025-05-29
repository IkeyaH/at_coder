N = gets.to_i
H = gets.split.map(&:to_i)

ans = 0

N.times do |i|
  rem = H[i] % 5
  quo = H[i] / 5

  ans += quo * 3
  while rem > 0
    ans += 1
    n = ans % 3 == 0 ? 3 : 1
    rem -= n
  end
end

puts ans
