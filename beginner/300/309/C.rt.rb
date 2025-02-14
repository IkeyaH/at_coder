N, K = gets.split.map(&:to_i)
tot = 0
meds = {}
meds.default = 0

N.times do
  a, b = gets.split.map(&:to_i)
  tot += b
  meds.key?(a) ? meds[a] = meds[a] += b : meds[a] = b
end

days = meds.keys.sort

if tot <= K
  puts '1'
  exit
end

days.each do |d|
  tot -= meds[d]
  if tot <= K
    puts d + 1
    break
  end
end
