N = gets.to_i
H = gets.split.map(&:to_i)

ans = 0
for i in 0...N do
  ta = H[i]
  if ta < 5
    4.times do
      ans += 1
      rt = ans % 3
      rt == 0 ?
        ta -= 3 :
        ta -= 1
      break if ta <= 0
    end
  else
    fc = ta / 5
    rm = ta - (5 * fc)
    ans += fc * 3
    next if rm == 0
    4.times do |i|
      ans += 1
      rt = ans % 3
      rt == 0 ?
        rm -= 3 :
        rm -= 1
      break if rm <= 0
    end
  end
end

puts ans
