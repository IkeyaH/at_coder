N = gets.to_i
hash = {}

N.times do
  t, k = gets.split.map(&:to_i)

  if hash.key?(k)
    hash[k] = t if t < hash[k]
  else
    hash[k] = t
  end
end

ans = 0
hash.each do |h|
  ans = [ans, h[1]].max
end

puts ans
