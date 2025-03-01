n = gets.to_i

max = 1
for i in 0..(10**6) do
  n_3 = i**3
  break if n_3 > n

  n_s = n_3.to_s

  ok = true
  (n_s.length / 2).times do |j|
    ok = false if n_s[j] != n_s[-(j + 1)]
  end
  max = [max, n_3.to_i].max if ok
end

puts max
