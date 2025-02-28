N = gets.to_i

a_arr = gets.split.map(&:to_i)
hash = {}

a_arr.each_with_index do |a, i|
  hash[a] = i + 1
end

ans = []

ne = -1

N.times do
  ta = hash[ne]
  ans << ta
  ne = ta
end

puts ans.join(' ')
