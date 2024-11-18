H, W = gets.chomp.split(' ').map(&:to_i)
map_a = []
map_b = []

H.times do
  map_a << gets.chomp.split('')
end

H.times do
  map_b << gets.chomp.split('')
end

ok = false

for i in 0...H do
  tmap_a = map_a.dup
  i.times do
    ta = tmap_a[0]
    tmap_a.shift
    tmap_a << ta
  end

  for j in 0...W do
    shifted_map = tmap_a.map { |a| a.rotate(j) }

    if shifted_map == map_b
      ok = true
      break
    end
  end
  break if ok
end

puts ok ? 'Yes' : 'No'
